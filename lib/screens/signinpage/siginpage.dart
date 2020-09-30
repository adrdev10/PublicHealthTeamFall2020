import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SigninPageState();
  }
}

class SigninPageState extends State<SigninPage> {
  TextEditingController emailAddressController;
  TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();

    emailAddressController.addListener(() {
      print(emailAddressController.text);
    });

    passwordController.addListener(() {
      print(emailAddressController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff1A6DFF),
                Color(0xff7209B7),
              ])),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //TODO: Plugin error for google fonts
              SizedBox(
                height: 25,
              ),
              Text(
                "HEKA",
                style: TextStyle(fontSize: 55, color: Colors.white),
              ),
              SizedBox(
                height: 100,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign in",
                        style: TextStyle(fontSize: 55, color: Colors.white)),
                    Row(
                      children: [
                        Text(
                          "New user?",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "Create an account",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: emailAddressController,
                      decoration: InputDecoration(hintText: "Email address"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                        controller: passwordController,
                        decoration:
                            InputDecoration(hintText: "password address"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
