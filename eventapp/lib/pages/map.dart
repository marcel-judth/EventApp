import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
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
    // TODO: implement initState
    super.initState();
    _setMarkerIcon();
  }

  void _setMarkerIcon() async {
     Uint8List markerIcon = await getBytesFromAsset('assets/icons/drink.png', 100);

    _markerIcon = BitmapDescriptor.fromBytes(markerIcon);
  }
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png)).buffer.asUint8List();
  }
  void _onMapCreated(GoogleMapController controller){
    _googleMapController = controller;
    setState(() {
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
      ),

    );
  }
}