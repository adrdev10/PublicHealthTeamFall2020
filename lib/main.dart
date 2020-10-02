import 'package:flutter/material.dart';
import 'package:heka_app/screens/signinpage/siginpage.dart';
import 'package:heka_app/screens/signuppage/SignUpPage.dart';
import 'package:heka_app/screens/splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      //Name routes
      routes: {
        "/": (context) => SplashScreen(),
        "/signinpage": (context) => SigninPage(),
        "/signuppage": (context) => SignUpPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Heka',
    );
  }
}
