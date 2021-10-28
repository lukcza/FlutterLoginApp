import 'package:flutter/material.dart';
import 'register_form.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: const EdgeInsets.only(top: 20),
        child: RegisterForm(),
      ),
    );
  }
}