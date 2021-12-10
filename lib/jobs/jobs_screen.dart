import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/search/search_job.dart';
import 'package:linkedin_clone/services/global_variables.dart';
import 'package:linkedin_clone/widgets/bottomNavBar.dart';
import 'package:linkedin_clone/widgets/job_widget.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  _JobScreenState createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  String? jobCategoryFilter;
  void getMyData() async {
    final DocumentSnapshot userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      name = userDoc.get('name');
      userImage = userDoc.get('userImage');
      location = userDoc.get("location");
    });
  }

  @override
  void initState() {
    super.initState();
    getMyData();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarForApp(
        indexNum: 0,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.filter_list_outlined, color: Colors.grey),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (c) => SearchScreen()));
            },
            icon: Icon(
              Icons.search_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance
            .collection('jobs')
            .where('jobCategory', isEqualTo: jobCategoryFilter)
            .where('recruitment', isEqualTo: true)
            .orderBy('createdAt', descending: false)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.data?.docs.isNotEmpty == true) {
              return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return JobWidget(taskTitle: taskTitle, taskDescription: taskDescription, taskId: taskId, uploadBy: uploadBy, userImage: userImage, name: name, recruitment: recruitment, email: email, location: location)
                  });
            }
          }
        },
      ),
    );
  }
}
