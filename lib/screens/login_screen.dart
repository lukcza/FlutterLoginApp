import 'package:flutter/material.dart';
import 'login_form.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: const EdgeInsets.only(top: 20),
        child: Loginform(),
      ),
    );
  }
}
