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

  //create circle for user's location on google maps
  Set<Circle> circles = Set.from([Circle(
    circleId: CircleId(id),
    center: LatLng(lat,lng),
    radius: 4000,
    )]);



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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _getLocation, 
        label: Text(''),
        icon: Icon(Icons.location_on),
      ),
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


