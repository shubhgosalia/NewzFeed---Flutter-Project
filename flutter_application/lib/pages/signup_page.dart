import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool circular = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        circular = true;
      });
      try {
        firebase_auth.UserCredential userCredential =
            await firebaseAuth.createUserWithEmailAndPassword(
                email: _emailController.text,
                password: _passwordController.text);
        print(userCredential.user?.email);
        setState(() {
          circular = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Registered successfully!"),
          duration: Duration(seconds: 2),
        ));

        Navigator.pushNamed(context, MyRoutes.loginRoute);
      } catch (e) {
        final snackbar = SnackBar(content: Text(e.toString()));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        setState(() {
          circular = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.0), // here the desired height
          child: AppBar(
            toolbarHeight: 120,
            title: Container(
              child: Align(
                alignment: Alignment(-0.16, 1),
                child: Image.asset(
                  "assets/images/newzfeed_logoooo_new.png",
                  fit: BoxFit.fill,
                  height: 90,
                  width: 90,
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
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text("Create your Account",
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
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (value.isEmpty) {
                        return "Email cannot be empty";
                      } else if (emailValid == false) {
                        return "Enter valid email id";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be empty";
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
                      } else if (value.length < 6) {
                        return "Password should be of atleast 6 characters";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 35,
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
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Wrap(
                    spacing: 50, // set spacing here
                    children: [
                      Image.asset('assets/images/google_icon.png',
                          width: 60, height: 60),
                      Image.asset('assets/images/google_icon.png',
                          width: 60, height: 60),
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                        text: "Existing User?  ",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                      new TextSpan(
                          text: "Login",
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, MyRoutes.loginRoute);
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
                    height: 135,
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