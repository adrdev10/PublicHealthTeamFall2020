import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heka_app/screens/infopages/infopages.dart';
import 'package:heka_app/screens/signinpage/siginpage.dart';
import 'package:heka_app/screens/signuppage/SignUpPage.dart';
import 'package:heka_app/screens/splashscreen/splashscreen.dart';
import 'package:heka_app/screens/testdashboard.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
              focusedBorder: UnderlineInputBorder(
                  // borderSide: BorderSide(color: Color.)
                  ))),
      initialRoute: "/",
      //Name routes
      routes: {
        "/": (context) => TestDashboard(),
        "/signinpage": (context) => SigninPage(),
        "/signuppage": (context) => SignUpPage(),
        "/infopages": (context) => InfoPages(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Heka',
    );
  }
}
