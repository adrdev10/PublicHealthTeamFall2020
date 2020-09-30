import 'package:flutter/material.dart';
import 'package:heka_app/screens/signinpage/siginpage.dart';
import 'package:heka_app/screens/splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/signinpage": (context) => SigninPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Heka',
    );
  }
}
