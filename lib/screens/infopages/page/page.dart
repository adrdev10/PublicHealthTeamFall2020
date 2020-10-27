import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  String title;
  String description;
  String image;

  PageContainer({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      color: Color(0xff1A6DFF),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 10,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 300,
              width: 300,
              child: Text(
                description,
                textAlign: TextAlign.center,
                maxLines: 2,
                softWrap: true,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            child: Image.asset(image),
            bottom: 100,
          ),
          if (image == "assets/page3.png")
            Positioned(
              //TODO: Style flat button
              child: FlatButton(
                onPressed: () => print("Application started"),
                child: Text("Start Application"),
              ),
              bottom: 100,
            ),
        ],
      ),
    );
  }
}
