import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_b/widgets.dart';
import 'package:flutter_login_b/screens.dart';
class Loginform extends StatefulWidget {
  const Loginform({Key? key}) : super(key: key);

  @override
  _LoginformState createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                controller: _emailController,
                decoration: const InputDecoration(
                    hintText: "email",
                    icon: Icon(Icons.email_outlined)
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                controller: _passwordController,
                decoration: const InputDecoration(
                  hintText: "password",
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
              ),
               const SizedBox(height:10,),
              MyButton(
                width: 200,
                height: 50,
                onPressed: () {},
                text: Text('Login'),
                icon: Icon(Icons.check),
              ),
              const SizedBox(height: 10,),
              MyButton(
                width: 200,
                height: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: () {
                       return RegisterScreen();
                      }
                    )
                  );
                },
                text: Text('Register'),
                icon: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        )
    );
  }
}
