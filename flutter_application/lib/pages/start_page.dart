import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5),
        () => Navigator.pushNamed(context, MyRoutes.signupRoute));

    return Material(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
          Container(
            width: 420,
            height: 212.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.0),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/news_cover_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 420,
            height: 355.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/news_logo_cover.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 420,
            height: 212.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/news_cover_2.png'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ]));
  }
}
