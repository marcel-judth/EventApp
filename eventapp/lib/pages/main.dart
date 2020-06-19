import 'package:eventapp/pages/map.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'registerSecondPage.dart';
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapPage(),
      routes: {
        '/Login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/registerSecondPage': (context) => RegisterSecondPage(),
        '/map': (context) => MapPage()
      },
    ));