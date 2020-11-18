import 'dart:io';

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

    width: MediaQuery.of(context).size.width,
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
      children:<Widget> [
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
      Container(
       child: Text('RESOURCES',
              style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.w500)),
      )],
              
      Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      padding: EdgeInsets.all(15),
                      decoration: new BoxDecoration(
                      image: new Image(clip-1072 2.png),
                      
                  )
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.right,
                      Text('HEKA',
                      style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
                      )  
      ), 
                  
                  ]),

                     Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 110.0,
                    height: 20,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff300EB5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Link(path),    // I will place the link right there but i am not too sure how to do that

                     
                    ),
                  ),
                  SizedBox(width: 5),
                  ButtonTheme(
                    minWidth: 130.0,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff520382),
                      child: Link(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                ],
              ),   
                      
                    
                  ),
                  
              
              




      ));
        
        
        
           
                  
              
              
  }
  
}


