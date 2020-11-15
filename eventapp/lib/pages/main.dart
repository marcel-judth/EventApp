import 'package:eventapp/pages/eventlist.dart';
import 'package:eventapp/pages/loading.dart';
import 'package:eventapp/pages/sidebar/sidebar_layout.dart';
import 'package:eventapp/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'registerSecondPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EventListPage(),
      routes: {
        '/Login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/registerSecondPage': (context) => RegisterSecondPage(),
        '/map': (context) => SideBarLayout()
      },
    ));

//to open Runner:
//open ios/Runner.xcworkspace
