import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Service/Auth_Service.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool circular = false;
  AuthClass authClass = AuthClass();

  moveToHome(BuildContext context) async {
    setState(() {
      circular = true;
    });

    try {
      firebase_auth.UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text);

      //final data = Data(email: _emailController.text);
      //Navigator.push(context,
      //   MaterialPageRoute(builder: (context) => ProfilePage(data: data)));
      //var currentUser = FirebaseAuth.instance.currentUser;

      //if (currentUser != null) {
      // print(currentUser.uid);
      //}

      print(userCredential.user?.email);
      setState(() {
        circular = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Logged In successfully!"),
        duration: Duration(seconds: 2),
      ));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    } catch (e) {
      final snackbar = SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      setState(() {
        circular = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(91.0), // here the desired height
          child: AppBar(
            centerTitle: true,
            toolbarHeight: 81,
            title: Container(
              child: Align(
                alignment: Alignment(-0.16, 1),
                child: Image.asset(
                  "assets/images/newzfeed_logoooo_new.png",
                  fit: BoxFit.fill,
                  height: 75,
                  width: 75,
                ),
              ),
            ),
            backgroundColor: Color(0xff1C2574),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Log In to your Account",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1C2574))),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email cannot be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    child: Text(
                      "Forgot Password?",
                      style: new TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () async => moveToHome(context),
                      child: Container(
                        width: 350,
                        height: 60,
                        alignment: Alignment.center,
                        child: circular
                            ? CircularProgressIndicator(
                                valueColor: new AlwaysStoppedAnimation<Color>(
                                    Colors.white),
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                      ),
                    ),
                  ),
                  //ElevatedButton(
                  //child: Text(""),
                  //style: TextButton.styleFrom(minimumSize: Size(350, 60)),
                  //onPressed: () {
                  //this navigates to the home page(as it is directed to the home route)
                  //Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //},
                  //),
                  SizedBox(
                    height: 25,
                  ),

                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    icon: FaIcon(FontAwesomeIcons.google, color: Colors.white),
                    label: Text(
                      "Continue with Google",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () async {
                      await authClass.googleSignIn(context);
                    },
                  ),

                  SizedBox(
                    height: 30,
                  ),
                ]),
              ),
              Material(
                  color: Colors.white,
                  child: Container(
                    child: new Center(
                        child: new RichText(
                            text: new TextSpan(children: [
                      new TextSpan(
                        text: "New User?  ",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                      new TextSpan(
                          text: "Sign Up",
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, MyRoutes.signupRoute);
                            })
                    ]))
                        //child: Text(
                        // "Existing User?",
                        // style: TextStyle(
                        //   color: Colors.white,
                        //  fontWeight: FontWeight.normal,
                        //  fontSize: 18,
                        // ),
                        //textAlign: TextAlign.center,
                        //  ),
                        ),
                    width: 420,
                    height: 125,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.lightBlue, Color(0xff1C2574)])),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

 //ElevatedButton(
                  // child: Text("Login"),
                  // style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  // onPressed: () {
                  //this navigates to the home page(as it is directed to the home route)
                  //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                  // },
                  // )