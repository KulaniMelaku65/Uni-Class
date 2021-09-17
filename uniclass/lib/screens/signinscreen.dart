import 'package:uniclass/screens/homescreen.dart';
import 'package:uniclass/screens/loginscreen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SigninScreen extends StatelessWidget {
  static const String idScreen = "register";

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 35.0,),
              Image(
                image: AssetImage("assets/images/logo_1.png"),
                width: 10000.0,
                height: 250.0,
                alignment: Alignment.center,
              ),
              SizedBox(height: 1.0,),
              Text(
                "Sign in to UNICLASS",
                style: TextStyle(fontSize: 40.0),
                textAlign: TextAlign.center,
              ),


              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children:

                  [SizedBox(height: 1.0,),
                    TextField(
                      controller: nameTextEditingController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "NAME",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.lightGreenAccent,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 16.0),
                    ),

                    SizedBox(height: 1.0,),
                    TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "EMAIL ADDRESS",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 1.0,),
                    TextField(
                      controller: phoneTextEditingController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "PHONE NUMBER",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 1.0,),
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 30.0,),
                    RaisedButton(
                        color: Colors.orangeAccent,
                        textColor: Colors.white,
                        child: Container(
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "create account ",
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(24.0)
                        ),
                        onPressed: () {

                          Navigator.pushNamedAndRemoveUntil(
                              context, HomePage.idScreen, (route) => false);
                        }

                    ),
                  ],
                ),
              ),

              FlatButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginScreen.idScreen, (route) => false);
                },
                child: Text(
                  "already have an account? Login here.",
                ),
              )

            ],

          ),
        ),
      ),
    );
  }

}

