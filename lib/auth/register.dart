import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late TextEditingController _fullNameController =
      TextEditingController(text: '');
  late TextEditingController _emailTextController =
      TextEditingController(text: '');
  late TextEditingController _passTextController =
      TextEditingController(text: '');
  late TextEditingController _locationController =
      TextEditingController(text: '');
  late TextEditingController _phoneNumberController =
      TextEditingController(text: '');

  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passFocusNode = FocusNode();
  FocusNode _positionFocusNode = FocusNode();
  FocusNode _phoneNumberFocusNode = FocusNode();
  bool _obscureText = true;
  final _signUpFormKey = GlobalKey<FormState>();
  File? imageFile;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  String? imageUrl;

  @override
  void dispose() {
    _animationController.dispose();
    _fullNameController.dispose();
    _emailTextController.dispose();
    _passTextController.dispose();
    _emailFocusNode.dispose();
    _passFocusNode.dispose();
    _positionFocusNode.dispose();
    _phoneNumberController.dispose();
    _phoneNumberFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
