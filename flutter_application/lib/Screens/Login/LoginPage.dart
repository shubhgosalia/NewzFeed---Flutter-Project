import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: size.height,
            child: Stack(alignment: Alignment.center, children: <Widget>[
              Positioned(
                  top: 120, child: Image.asset("assets/images/logo.png")),
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ])));
  }
}
