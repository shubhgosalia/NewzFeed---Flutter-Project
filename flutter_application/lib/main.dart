import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bottom_nav.dart';
import 'package:flutter_application_1/pages/category_list.dart';
import 'package:flutter_application_1/pages/category_page1.dart';
import 'package:flutter_application_1/pages/categorypage2.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/signup_page.dart';
import 'package:flutter_application_1/pages/start_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
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
        MyRoutes.profileRoute: (context) => MyHomePage(),
        MyRoutes.catRoute1: (context) => SourceScreen(),
        MyRoutes.catRoute1: (context) => MyHomePage(),
        MyRoutes.catRoute2: (context) => signin1(),
        MyRoutes.catRoute2: (context) => MyHomePage(),
      },
      //home: MyHomePage(),
    );
  }
}
