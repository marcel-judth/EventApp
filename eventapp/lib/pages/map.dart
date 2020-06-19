import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  GoogleMapController _googleMapController;
  Set<Marker> _markers = HashSet<Marker>();
  BitmapDescriptor _markerIcon;

  @override
  void initState() {
    super.initState();
    _setMarkerIcon();
  }

  void _setMarkerIcon() async {
     _markerIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 5), 'assets/icons/wedding.png');
  }

  void _onMapCreated(GoogleMapController controller){
    _googleMapController = controller;
    setState(() {
      print('add marker');
      _markers.add(Marker(
        markerId: MarkerId("0"),
        position: LatLng(46.606143, 13.845198),
        infoWindow: InfoWindow(
          title: "Judls home",
          snippet: "really cool"
        ),
        icon: _markerIcon
      ));
    });
    _setGoogleMapStyle();
  }

  void _setGoogleMapStyle() async{
    try {
      String style = await DefaultAssetBundle.of(context).loadString('lib/Styling/google_map_style.json');
      _googleMapController.setMapStyle(style);
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(46.606143, 13.845198),
          zoom: 15
        ),
        onMapCreated: _onMapCreated,
        markers: _markers,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
      ),

    );
  }
}