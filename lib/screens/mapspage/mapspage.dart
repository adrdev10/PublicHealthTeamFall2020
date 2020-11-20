import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:location_platform_interface/location_platform_interface.dart';


class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => MapPageState();
}

// [
//   {
//     "lat": 20.0,
//     "long": 30.0
//     "infected": true | false
//   },
// ]


class MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  static  double lat = 0.0;
  static  double lng = 0.0;

  Location location = new Location();

  @override
  void initState() {
    // TODO: implement initState
    super.initState(
      
    );
    _getLocation();
  }
  
  /*void _getLocation() async{
     location = new Location();
    try{
      await location.getLocation().then((onValue){
        print(onValue.latitude.toString()+ ","+onValue.longitude.toString());
        lat = onValue.latitude;
        lng = onValue.longitude;
      });
      print(location);
    } catch (e){
      print(e);
      if(e.code == 'PERMISSION DENIED'){
        print('Permission was denied');
      }
    }
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 0,
        target: LatLng(lat, lng),
        zoom: 17.0,
      ),
      ));
  }*/

  //Get User's location through google maps.
  void _getLocation() async{
    final GoogleMapController controller = await _controller.future;
    LocationData currentLocation;
    var location = new Location();
    try {
        currentLocation = await location.getLocation();
      } on Exception {
         currentLocation = null;
       }

    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 0,
        target: LatLng(currentLocation.latitude, currentLocation.longitude),
        zoom: 17.0,
      ),
    ));
  }

    CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(lat, lng),
    zoom: 14.4746,
  );

 //create circles as a "heat map" on google maps
  Set<Circle> circles = Set.from([Circle(
    circleId: CircleId('1'),
    center: LatLng(25.769364092918536, -80.37574091998015),
    fillColor: Color.fromRGBO(171, 39, 133, 0.1),
    strokeColor: Color.fromRGBO(171, 39, 133, 0.5),
    radius: 750,
    strokeWidth: 5,
    ),

    Circle(
      circleId: CircleId('2'),
      center: LatLng(25.77420459001883, -80.35005608643283),
     fillColor: Color.fromRGBO(170, 39, 133, 0.41),
     strokeColor: Color.fromRGBO(170, 39, 133, 0.5),
      radius: 555,
     strokeWidth: 5,
    ),

    Circle(
      circleId: CircleId('3'),
      center: LatLng(25.77420459001883, -80.35005608643283),
     fillColor: Color.fromRGBO(170, 39, 133, 0.64),
     strokeColor: Color.fromRGBO(170, 39, 133, 0.5),
      radius: 625,
     strokeWidth: 5,
    ),

    Circle(
      circleId: CircleId('4'),
      center: LatLng(25.789803088655784, -80.38206479482601),
     fillColor: Color.fromRGBO(170, 39, 133, 0.86),
     strokeColor: Color.fromRGBO(170, 39, 133, 0.5),
      radius: 690,
     strokeWidth: 5,
    ),
    
    Circle(
      circleId: CircleId('5'),
      center: LatLng(25.74104768762691, -80.34211060941574),
     fillColor: Color.fromRGBO(170, 39, 133, 0.53),
     strokeColor: Color.fromRGBO(170, 39, 133, 0.53),
      radius: 840,
     strokeWidth: 5,
    ),

    ]);
  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        onCameraMove: null,
        circles: circles,
        myLocationButtonEnabled: true,
        markers: getMarkers([120.0, 230.0]),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getLocation();
        },
      child: Icon(Icons.my_location_sharp),
      backgroundColor: Colors.pinkAccent,
       ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    );
  }

//Creates markers for infected users at random locations
  Set<Marker> getMarkers(List<double> listOfUsers) {
    Set<Marker> positionsSet = Set();
    var filteredData = listOfUsers.where((element) => element > 2.0);
    listOfUsers.forEach((element) {
      var newMarker = Marker(
          markerId: MarkerId("value1"), position: LatLng(element, element));
      positionsSet.add(newMarker);
    });
    return positionsSet;
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    // controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}


