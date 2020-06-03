import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../shapes/point.dart';
import '../Styling/size_config.dart';
import '../Styling/styles.dart';


class RegisterPage extends StatelessWidget {
  //ToDo: textfiels;
  //ToDo adjust size of the objects
  //ToDo: animations
  //ToDo: datepicker;
  //ToDo next button
  //ToDo back button

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    DateTime date = DateTime.now();
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [AppTheme.colorAccent, AppTheme.colorGradient])),
        child: Stack(
          children: <Widget>[
            Point(
              radius: SizeConfig.blockSizeVertical * 10,
              top: SizeConfig.blockSizeVertical * 26,
              left: SizeConfig.blockSizeHorizontal * 40,
              color: AppTheme.colorAccent2,
              blurRadius: SizeConfig.blockSizeVertical * 10,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 2,
              top: SizeConfig.blockSizeVertical * 15,
              left: SizeConfig.blockSizeHorizontal * 40,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 3,
              top: SizeConfig.blockSizeVertical * 24,
              left: SizeConfig.blockSizeHorizontal * 10,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),

            Point(
              radius: SizeConfig.blockSizeVertical,
              top: SizeConfig.blockSizeVertical * 4,
              left: SizeConfig.blockSizeHorizontal * 10,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 10,
              top: SizeConfig.blockSizeVertical * 22,
              left: SizeConfig.blockSizeHorizontal * 75,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 3,
              top: SizeConfig.blockSizeVertical * 5,
              left: SizeConfig.blockSizeHorizontal * 70,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 5,
              top: SizeConfig.blockSizeVertical * 3,
              left: SizeConfig.blockSizeHorizontal * 30,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 15,
              top: SizeConfig.blockSizeVertical * 50,
              left: SizeConfig.blockSizeHorizontal * 60,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 3,
              top: SizeConfig.blockSizeVertical * 45,
              left: SizeConfig.blockSizeHorizontal * 25,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 1,
              top: SizeConfig.blockSizeVertical * 35,
              left: SizeConfig.blockSizeHorizontal * 70,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 6,
              top: SizeConfig.blockSizeVertical * 60,
              left: SizeConfig.blockSizeHorizontal * 12,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 8,
              top: SizeConfig.blockSizeVertical * 90,
              left: SizeConfig.blockSizeHorizontal * 30,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 2,
              top: SizeConfig.blockSizeVertical * 91,
              left: SizeConfig.blockSizeHorizontal * 80,
              blurRadius: SizeConfig.blockSizeVertical * 3,
              color: AppTheme.colorAccent,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 1,
              top: SizeConfig.blockSizeVertical * 84,
              left: SizeConfig.blockSizeHorizontal * 63,
              blurRadius: SizeConfig.blockSizeVertical * 3,
              color: AppTheme.colorAccent,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 10,
              top: SizeConfig.blockSizeVertical * 75,
              left: SizeConfig.blockSizeHorizontal * 90,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 8,
              top: SizeConfig.blockSizeVertical * 95,
              left: -SizeConfig.blockSizeHorizontal * 6,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 3,
              top: SizeConfig.blockSizeVertical * 80,
              left: SizeConfig.blockSizeHorizontal * 15,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent,
            ),
            Positioned(
              top: SizeConfig.safeBlockHorizontal * 25,
              left: SizeConfig.safeBlockVertical * 2,
              child: GestureDetector(
                onTap: () { Navigator.pop(context);},
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                  child: Icon(Icons.arrow_back, color: AppTheme.colorAccent),

                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                Widget>[
              Padding(
                padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: SizeConfig.blockSizeVertical * 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Register",
                            style: TextStyle(
                                color: AppTheme.colorPrimary,
                                fontSize: SizeConfig.blockSizeVertical * 5,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Welcome!",
                            style: TextStyle(
                                color: AppTheme.colorPrimary,
                                fontSize: SizeConfig.blockSizeVertical * 2.5,
                                fontWeight: FontWeight.bold
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 4,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 3, 0, SizeConfig.blockSizeHorizontal * 3, SizeConfig.blockSizeVertical * 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppTheme.colorPrimary,
                          borderRadius: BorderRadius.all(
                              Radius.circular(60))),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 3),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 6,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.blockSizeHorizontal * 3),
                                decoration: BoxDecoration(
                                  color: AppTheme.colorPrimary,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(155, 186, 113, .3),
                                      blurRadius: SizeConfig.blockSizeVertical * 5,
                                    )
                                  ],
                                ),
                                child: Column(children: [
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical:
                                            SizeConfig.blockSizeVertical / 1.5,
                                            horizontal:
                                            SizeConfig.blockSizeHorizontal * 4),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[200]))),
                                        child: TextField(
                                            decoration: InputDecoration(
                                                icon: Icon(Icons.person),
                                                hintText: "First Name",
                                                hintStyle:
                                                TextStyle(color: Colors.grey),
                                                border: InputBorder.none)),
                                      ),
                                    ],
                                  ),
                                ]),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 2,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.blockSizeHorizontal * 3),
                                decoration: BoxDecoration(
                                  color: AppTheme.colorPrimary,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(155, 186, 113, .3),
                                      blurRadius: SizeConfig.blockSizeVertical * 5,
                                    )
                                  ],
                                ),
                                child: Column(children: [
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical:
                                            SizeConfig.blockSizeVertical / 1.5,
                                            horizontal:
                                            SizeConfig.blockSizeHorizontal * 4),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[200]))),
                                        child: TextField(
                                            decoration: InputDecoration(
                                                icon: Icon(Icons.person),
                                                hintText: "Last Name",
                                                hintStyle:
                                                TextStyle(color: Colors.grey),
                                                border: InputBorder.none)),
                                      ),
                                    ],
                                  ),
                                ]),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 2,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.blockSizeHorizontal * 3),
                                decoration: BoxDecoration(
                                  color: AppTheme.colorPrimary,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(155, 186, 113, .3),
                                      blurRadius: SizeConfig.blockSizeVertical * 5,
                                    )
                                  ],
                                ),
                                child: Column(children: [
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical:
                                            SizeConfig.blockSizeVertical / 1.5,
                                            horizontal:
                                            SizeConfig.blockSizeHorizontal * 4),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[200]))),
                                        child: TextField(
                                            decoration: InputDecoration(
                                                icon: Icon(Icons.mail),
                                                hintText: "Email",
                                                hintStyle:
                                                TextStyle(color: Colors.grey),
                                                border: InputBorder.none)),
                                      ),
                                    ],
                                  ),
                                ]),
                              ),

                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 3,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, '/registerSecondPage');
                                },
                                child: Center(
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: AppTheme.colorAccent.withOpacity(.4)
                                    ),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppTheme.colorAccent
                                      ),
                                      child: Icon(Icons.arrow_forward, color: AppTheme.colorPrimary),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: SizeConfig.blockSizeVertical * 3,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
