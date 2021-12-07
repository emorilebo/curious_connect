import 'package:flutter/material.dart';

class JobDetailScreen extends StatefulWidget {
  final String uploadedBy;
  final String taskID;
  const JobDetailScreen({required this.uploadedBy, required this.taskID});

  @override
  _JobDetailScreenState createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
