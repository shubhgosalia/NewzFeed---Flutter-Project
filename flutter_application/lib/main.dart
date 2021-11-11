import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bottom_nav.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/signup_page.dart';
import 'package:flutter_application_1/pages/start_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      //we can change the initial route anytime
      initialRoute: "/start",
      routes: {
        MyRoutes.signupRoute: (context) => SignupPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.startRoute: (context) => StartPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.homeRoute: (context) => MyHomePage(),
        MyRoutes.profileRoute: (context) => ProfilePage(),
      },
      //home: MyHomePage(),
    );
  }
}
