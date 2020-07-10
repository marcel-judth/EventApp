import 'package:eventapp/pages/map.dart';
import 'package:flutter/material.dart';

final Color backgroundColor = Color(0xFF4A4A58);

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage> with SingleTickerProviderStateMixin{

  bool isCollapsed = true; 
  double screenWidth, screenHeight;
  Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  //Animation<double> _scaleAnimation;
  Animation<Offset> _slideAnimation;
  Animation<double> _menuScaleAnimation;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    //_scaleAnimation = Tween<double>(begin: 1, end: 0.6).animate(_controller);
    _menuScaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: <Widget>[
            menu(context),
            map(context)
          ],
        ));
  }

  Widget menu(context) {
  return SlideTransition(
    position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
        padding: const EdgeInsets.only(left: 40.0),
        child: Align(
          alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://images.unsplash.com/photo-1534308143481-c55f00be8bd7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1788&q=80")
                        )
                    )),
              ],),
              SizedBox(height: 20,),
              Text("Max Musterman", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("max.musterman@email.com", style: TextStyle(color: Colors.white, fontSize: 15),),
              SizedBox(height: 100),
              Row(
                children: <Widget>[
                  Icon(Icons.event, color: Colors.white,),
                  SizedBox(width: 15,),
                  Text("Event-Liste", style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: <Widget>[
                  Icon(Icons.person, color: Colors.white,),
                  SizedBox(width: 15,),
                  Text("Meine Events", style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: <Widget>[
                  Icon(Icons.settings, color: Colors.white,),
                  SizedBox(width: 15,),
                  Text("Einstellungen", style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: <Widget>[
                  Icon(Icons.exit_to_app, color: Colors.white,),
                  SizedBox(width: 15,),
                  Text("Log out", style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
    ),
      ),
  );
}


Widget map(context) {
  return AnimatedPositioned(
      duration: duration,
      top: isCollapsed ? 0 : 0.2 * screenHeight,
      bottom: isCollapsed ? 0 : 0.2 * screenHeight,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      child: Material(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        elevation: 8,
        child: Stack(
          children: <Widget>[
            MapPage(),
            Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
            child: Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(child: Icon(Icons.menu, color: Colors.black,), onTap: () {
              setState((){
                if(isCollapsed)
                  _controller.forward();
                else
                  _controller.reverse();
                isCollapsed = !isCollapsed;
              });
            },),
            Text("My Cards", style: TextStyle(fontSize: 24, color: Colors.black),),
            Icon(Icons.settings, color: Colors.black)
          ],          
        ),
      ],
            ),
      ),
          ],
        ),
    ),
  );
}
}

