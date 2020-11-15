import 'dart:collection';
import 'package:eventapp/model/event.dart';
import 'package:eventapp/pages/sidebar/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapPage extends StatelessWidget with NavigationStates{
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
  List<Event> _allEvents = List<Event>();
  Location _curLocation = Location();

  @override
  void initState() {
    super.initState();
    _loadEvents();
    _setMarkerIcon();
  }

  void _setMarkerIcon() async {
    _markerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 5), 'assets/icons/wedding.png');
  }

  void _onMapCreated(GoogleMapController controller) {
    _googleMapController = controller;
    setState(() {
      //print('myLocation: ${_curLocation.getLocation()}');
      _curLocation.onLocationChanged.listen((loc){
        //print('Hello from location: $loc');
        _googleMapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(loc.latitude, loc.longitude), zoom: 15)));
      });
      _loadEvents();
      _markers.add(Marker(
          markerId: MarkerId("0"),
          position: LatLng(46.606143, 13.845198),
          infoWindow: InfoWindow(),
          icon: _markerIcon));
    });
    _setGoogleMapStyle();
  }

  void _loadEvents() {
    _allEvents.add(Event(
        name: 'Event1',
        description: 'just a normal Event',
        latitude: 46.606143,
        longitude: 13.845198,
        maxMembers: 200));
  }

  void _setGoogleMapStyle() async {
    try {
      String style = await DefaultAssetBundle.of(context)
          .loadString('lib/Styling/google_map_style.json');
      _googleMapController.setMapStyle(style);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(children: <Widget>[
        GoogleMap(
          initialCameraPosition:
              CameraPosition(target: LatLng(46.606143, 13.845198), zoom: 15),
          onMapCreated: _onMapCreated,
          markers: _markers,
          myLocationEnabled: true,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeEvent(_allEvents[0]),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }

  Widget makeEvent(Event event) {
    return AspectRatio(
      aspectRatio: 1.7 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/partypoppers_116549.png'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                  ),
                  child:
                      Text('2.0 km', style: TextStyle(color: Colors.grey[500])),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              event.name,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Member: ${event.maxMembers}",
                style: TextStyle(
                    color: Colors.grey[300], fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.star_border,
                    color: Colors.yellow[700],
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.yellow[700],
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.yellow[700],
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.yellow[700],
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.yellow[700],
                    size: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
