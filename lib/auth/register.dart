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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
