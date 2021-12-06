import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/jobs/jobs_screen.dart';

class BottomNavigationBarForApp extends StatelessWidget {
  int indexNum = 0;
  BottomNavigationBarForApp({required this.indexNum});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.white,
      backgroundColor: Colors.black,
      buttonBackgroundColor: Colors.white,
      height: 52,
      index: indexNum,
      items: <Widget>[
        Icon(
          Icons.list,
          size: 18,
          color: Colors.blue,
        ),
        Icon(
          Icons.search,
          size: 18,
          color: Colors.blue,
        ),
        Icon(
          Icons.add,
          size: 18,
          color: Colors.blue,
        ),
        Icon(
          Icons.person_pin,
          size: 18,
          color: Colors.blue,
        ),
        Icon(
          Icons.exit_to_app,
          size: 18,
          color: Colors.blue,
        ),
      ],
      animationDuration: Duration(
        milliseconds: 300,
      ),
      animationCurve: Curves.bounceInOut,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => JobScreen()));
        }
      },
    );
  }
}
