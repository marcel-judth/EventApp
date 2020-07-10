import 'package:eventapp/pages/map.dart';
import 'package:eventapp/pages/menu_dashboard_layout.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'registerSecondPage.dart';
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuDashboardPage(),
      routes: {
        '/Login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/registerSecondPage': (context) => RegisterSecondPage(),
        '/map': (context) => MapPage()
      },
    ));

    //to open Runner:
    //open ios/Runner.xcworkspace