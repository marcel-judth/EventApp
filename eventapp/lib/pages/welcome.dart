import 'package:eventapp/Animation/fadeAnimation.dart';
import 'package:eventapp/Styling/size_config.dart';
import 'package:eventapp/Styling/styles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'login.dart';

class HomePage extends StatefulWidget{
  //Todo Add some graphics
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  AnimationController _scaleController;
  AnimationController _scale2Controller;
  AnimationController _widthController;
  AnimationController _positionController;

  Animation<double> _scaleAnimation;
  Animation<double> _scale2Animation;
  Animation<double> _widthAnimation;
  Animation<double> _positionAnimation;

  bool hideIcon = false;

  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300)
    );

    _scaleAnimation = Tween<double>(
        begin: 1.0,
        end: 0.8
    ).animate(_scaleController)..addStatusListener((status){
      if(status == AnimationStatus.completed) {
        _widthController.forward();
      }
    });

    _widthController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 600)
    );

    _widthAnimation = Tween<double>(
        begin: 80.0,
        end: 300.0
    ).animate(_widthController)..addStatusListener((status){
      if(status == AnimationStatus.completed) {
        _positionController.forward();
      }
    });

    _positionController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1000)
    );

    _positionAnimation = Tween<double>(
        begin: 0.0,
        end: 215.0
    ).animate(_positionController)..addStatusListener((status){
      if(status == AnimationStatus.completed) {
        setState(() {
          hideIcon = true;
        });
        _scale2Controller.forward();
      }
    });

    _scale2Controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1000)
    );

    _scale2Animation = Tween<double>(
        begin: 1.0,
        end: 50.0
    ).animate(_scale2Controller)..addStatusListener((status){
      if(status == AnimationStatus.completed) {
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: LoginPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppTheme.colorAccent,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppTheme.colorAccent,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [AppTheme.colorAccent, AppTheme.colorAccent.withOpacity(.9), AppTheme.colorAccent.withOpacity(.8)])
        ),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Welcome",
                  style: TextStyle(color: AppTheme.colorPrimary, fontSize: 40),)),
                  SizedBox(height: 15,),
                  FadeAnimation(1.3, Text("PlaceToPe is an excellent service for finding \nyour favourite event. This app has this \nand that and those and is perfect!",
                    style: TextStyle(color: AppTheme.colorPrimary.withOpacity(.7), height: 1.4),)),
                  SizedBox(height: 180,),
                  FadeAnimation(1.6, AnimatedBuilder(
                    animation: _scaleController,
                    builder: (context, child) => Transform.scale(
                    scale: _scaleAnimation.value,
                    child: InkWell(
                      onTap: () {
                        _scaleController.forward();
                      },
                        child: Center(
                          child: AnimatedBuilder(
                            animation: _widthController,
                            builder: (context, child) => Container(
                              width: _widthAnimation.value,
                              height: 80,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white.withOpacity(.4)
                              ),
                              child: Center(
                                child: Stack(
                                  children: <Widget>[
                                    AnimatedBuilder(
                                      animation: _positionController,
                                      builder: (context, child) => Positioned(
                                        left: _positionAnimation.value,
                                        child: AnimatedBuilder(
                                          animation: _scale2Controller,
                                          builder: (context, child) => Transform.scale(
                                            scale: _scale2Animation.value,
                                            child: Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white
                                            ),
                                            child: hideIcon == false ? Icon(Icons.arrow_forward, color: AppTheme.colorAccent) : Container(),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),),
                  ),
                  ),
                  SizedBox(height: 100,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}