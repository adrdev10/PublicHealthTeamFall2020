import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resourcespage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
            )),
            width: MediaQuery.of(context).size.width,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .05,
                  ),
                  Container(
                    child: Text('RESOURCES',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.asset("assets/page2.png"),
                        Text('HEKA',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                      ]),
                ])
       //          width: MediaQuery.of(context).size.width,
          
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 130.0,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff300EB5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text('FLORIDA'),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(width: 5),
                  ButtonTheme(
                    minWidth: 130.0,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff520382),
                      child: Text('US'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              
                ));

//  width: MediaQuery.of(context).size.width,

    // //   Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //     children:<Widget> [
    //             SizedBox(
    //               height: MediaQuery.of(context).size.height * .05,
    //             ),

    //                    Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: <Widget>[
    //                 ButtonTheme(
    //                   minWidth: 110.0,
    //                   height: 20,
    //                   child: RaisedButton(

    //                   // I am using this one now to insert the url but I am not too sure if it is the right one
    //                     onPressed:_launchURL,
    //                     color: Color(0xff300EB5),
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(5.0),
    //                     ),
    //                     _launchURL() async {    //This is where the code for the url is placed
    //                           const url = 'https://flutter.dev';
    //                               if (await canLaunch(url)) {
    //                                   await launch(url);
    //                                 } else {
    //                                   throw 'Could not launch $url';
    //                                        }
    //                     }
    //                   ),
    //                 ),
    //                 SizedBox(width: 5),
    //                 ButtonTheme(
    //                   minWidth: 130.0,
    //                   height: 40,
    //                   child: RaisedButton(
    //                     onPressed:_launchUrl,
    //                     color: Color(0xff520382),
    //                     child: new InkWell(
    //             child: new Text('Open Browser'),
    //             onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
    //                     ),
    //            ),
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(10.0),
    //                     ),
    //                     textColor: Color(0xffffffff),
    //                   ),
    //               ]),

    //             ),

    //                 ),

    //     ));
  }
}
