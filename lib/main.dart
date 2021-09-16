import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uniclass/screens/homescreen.dart';
import 'package:uniclass/screens/loginscreen.dart';
import 'package:uniclass/screens/signinscreen.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UNICLASS',
      theme: ThemeData(
        fontFamily:  "Brand Bold" ,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

       initialRoute:LoginScreen.idScreen,
        routes:
  {
       SigninScreen.idScreen: (context) => SigninScreen(),
       LoginScreen.idScreen: (context) => LoginScreen(),
       HomePage.idScreen: (context) => HomePage(),

  },

  debugShowCheckedModeBanner: false,
  );
}
}


