import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class JobDetailScreen extends StatefulWidget {
  final String uploadedBy;
  final String jobID;
  const JobDetailScreen({required this.uploadedBy, required this.jobID});

  @override
  _JobDetailScreenState createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  TextEditingController _commentController = TextEditingController();
  bool _isCommenting = false;
  String? userImageUrl;
  String? jobCategory;
  String? jobDescription;
  String? jobTitle;
  bool? recruitment;
  Timestamp? postedDateTimeStamp;
  Timestamp? deadlineDateTimeStamp;
  String? postedDate;
  String? deadlineDate;
  String locationCompany = '';
  String emailCompany = '';

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
