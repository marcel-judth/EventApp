import 'dart:io';

import 'package:eventapp/Styling/size_config.dart';
import 'package:eventapp/Styling/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();

}

class _LoadingState extends State<Loading>{

  void setup() async{
    sleep(Duration(seconds: 1));
    Navigator.pushReplacementNamed(context, '/register');
  }

  @override
  void initState() {
    super.initState();
    setup();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.colorAccent,
          gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [AppTheme.colorAccent, AppTheme.colorAccent.withOpacity(.9), AppTheme.colorAccent.withOpacity(.8)])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SpinKitCubeGrid(
                color: AppTheme.colorAccent2,
                size: 100.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}