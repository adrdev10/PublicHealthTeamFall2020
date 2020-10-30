import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

//import 'package:heka_app/main.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController TotalCases;
  TextEditingController ActiveCases;
  TextEditingController Recovered;
  TextEditingController Deaths;
  TextEditingController Stats;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HEKA')),
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
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 2,
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
                      child: Text('US'),
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
                      child: Text('Global'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 90,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff49BFF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text('Total Cases'),
                      //child: TextFormField(
                      // controller: TotalCases,)
                      //),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(width: 10),
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 90,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xffF2A55D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text('Active Cases'),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 90,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff63C74A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text('Recovered'),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(width: 10),
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 90,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xffBE4040),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text('Deaths'),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 45,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff580E36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text('Get Resources'),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                  //SizedBox(width: 10),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 45,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xff520382),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text('Answer Questions'),
                  textColor: Color(0xffffffff),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    //color: Color(0xff520382),
                    color: Colors.transparent,
                    child: Text('Daily'),
                    textColor: Color(0xffffffff),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.transparent,
                    child: Text('Weekly'),
                    textColor: Color(0xffffffff),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.transparent,
                    child: Text('Monthly'),
                    textColor: Color(0xffffffff),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 120,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xffC4C4C4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      //mainAxisAlignment: MainAxisAlignment.center,
                      child: Text('Statistics'),
                      textColor: Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 410,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff1A6DFF),

                      //child: Text('Statistics'),
                      //textColor: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
