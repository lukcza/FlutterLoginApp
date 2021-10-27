import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Colors.amber,
      ) ,
      child: MaterialButton(
        onPressed:() {},
        child: Text("Login"),
      ),
    );
  }
}
