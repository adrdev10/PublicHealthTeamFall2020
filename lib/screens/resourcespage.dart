import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resourcespage extends StatelessWidget{
@override
State<StatefulWidget> createState (){
    return resourcespageState();
}
class resourcespageState extends State <resourcespage>{
@override
Widget build (Buildcontext context){
   return Scaffold(
      body: Container (
         decoration: BoxDecoration(  
            gradient: LinearGradient( 
                colors: [
                 Colors.blue,
                 Colors.purple 
                ],
                begin:Alignment.bottomCenter,
                end: Alignment.topRight,
      )     
              )
        child: Container(
           alignment: Alignment.topRight,
              child: Text(
                  'HEKA';
               style: TextStyle(
               fontSize: 40,
               color: Colors.white,
               )
              )
     child: Container(
         decoration: new BoxDecoration(
             image: new DecorationImage(
                  return Image(image: AssetImage('assets/clip-1072 2.png'));  
                 fit: BoxFit.fill,
             )
         )
           
     )
        
        )
           
            
        
          

}

}


}