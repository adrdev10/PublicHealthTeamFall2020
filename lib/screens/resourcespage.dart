import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
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
    )
        ),

            //   child: Container(
            //      decoration: new BoxDecoration(
            //          image: new DecorationImage(
            //               return Image(image: AssetImage('assets/clip-1072 2.png'));
            //              fit: BoxFit.fill,
            //          )
            //      )

            //  )
    width: MediaQuery.of(context).size.width,
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Container(
        Text("RESOURCES",
              style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.w500)), 
      ]),
      
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




      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
    padding: EdgeInsets.all(15),
    decoration: new BoxDecoration(
      image: new Image.asset(clip-1072 2.png),
     fit: BoxFit.fill,
    ),
    mainAxisAlignment: Maint
    Container(
        Text("HEKA",
              style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w500)),
        )
      ],)
   

      )
        
        )
        
           
                  
              
               ),
  }
  
}
