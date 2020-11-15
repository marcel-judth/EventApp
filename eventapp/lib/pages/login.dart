import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../shapes/point.dart';
import '../Styling/size_config.dart';
import '../Styling/styles.dart';


class LoginPage extends StatelessWidget{

  //ToDo: textfiels;
  //ToDo adjust size of the objects
  //ToDo: animations
  @override
  Widget build(BuildContext context) {
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
              top: SizeConfig.blockSizeVertical * 22,
              left: SizeConfig.blockSizeHorizontal * 40,
              color: AppTheme.colorAccent2,
              blurRadius: SizeConfig.blockSizeVertical * 10,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 2,
              top: SizeConfig.blockSizeVertical * 15,
              left: SizeConfig.blockSizeHorizontal * 45,
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
              radius: SizeConfig.blockSizeVertical * 3,
              top: SizeConfig.blockSizeVertical * 8,
              left: SizeConfig.blockSizeHorizontal * 70,
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
              top: SizeConfig.blockSizeVertical * 14,
              left: SizeConfig.blockSizeHorizontal * 75,
              blurRadius: SizeConfig.blockSizeVertical * 10,
              color: AppTheme.colorAccent2,
            ),
            Point(
              radius: SizeConfig.blockSizeVertical * 3,
              top: SizeConfig.blockSizeVertical * 8,
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
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                Widget>[
              Padding(
                padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: SizeConfig.blockSizeVertical * 7),
                    Text("Login",
                        style: TextStyle(
                            color: AppTheme.colorPrimary,
                            fontWeight: FontWeight.bold,

                            fontSize: SizeConfig.blockSizeVertical * 5)),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical,
                    ),
                    Text("Welcome Back!",
                        style: TextStyle(
                            color: AppTheme.colorPrimary,
                            fontSize: SizeConfig.blockSizeVertical * 2.5)),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 3,
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
                                height: SizeConfig.blockSizeVertical * 1,
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
                                                icon: Icon(Icons.lock),
                                                hintText: "Password",
                                                hintStyle:
                                                TextStyle(color: Colors.grey),
                                                border: InputBorder.none)),
                                      ),
                                    ],
                                  ),
                                ]),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 4,
                              ),
                              Container(
                                height: SizeConfig.blockSizeHorizontal * 12,
                                margin: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.blockSizeHorizontal * 16),
                                decoration: BoxDecoration(
                                  color: AppTheme.colorAccent,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(context, '/map');
                                  },
                                  child: Center(
                                    child: Text("Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: SizeConfig.blockSizeVertical * 2.5,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 2,
                              ),
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.underline),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 6,
                              ),

                              //Todo add image to Facebook and Insta button
                              //Todo add animations
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      height: SizeConfig.blockSizeHorizontal * 10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: AppTheme.colorFBButton
                                      ),
                                      child: Center(
                                        child: Text("Facebook", style: TextStyle(color: AppTheme.colorPrimary, fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: SizeConfig.blockSizeHorizontal * 5,),
                                  Expanded(
                                    child: Container(
                                      height: SizeConfig.blockSizeHorizontal * 10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: AppTheme.colorAppleButton
                                      ),
                                      child: Center(
                                        child: Text("Apple", style: TextStyle(color: AppTheme.colorPrimary, fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 4,
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      fontSize: SizeConfig.blockSizeVertical * 2,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey),
                                  children: <TextSpan>[
                                    TextSpan(text: 'Don t have an account? '),
                                    TextSpan(
                                        text: 'Sign up here!',
                                        style: TextStyle(
                                            decoration: TextDecoration.underline),
                                        recognizer: TapGestureRecognizer()..onTap = () {
                                          Navigator.pushNamed(context, '/register');
                                        }
                                    )
                                  ],
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