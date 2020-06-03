import 'package:eventapp/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'registerSecondPage.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/Login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/registerSecondPage': (context) => RegisterSecondPage(),
      },
    ));