import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../shapes/point.dart';
import '../Styling/size_config.dart';
import '../Styling/styles.dart';


class RegisterSecondPage extends StatefulWidget {
  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  var termsOfUse = false;
  DateTime selectedDate;
  var female = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var txtDateController = TextEditingController();
    if(selectedDate != null)
      txtDateController.text = DateFormat("dd.MM.yyyy").format(selectedDate);
    else
      txtDateController.text = "";

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
                                      GestureDetector(
                                        onTap: () async {
                                          selectedDate = await _selectDate(context);
                                          setState(() {});
                                        },
                                        child: Container(
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
                                              enabled: false,
                                              controller: txtDateController,
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons.date_range),
                                                  hintText: "Birthdate",
                                                  hintStyle:
                                                  TextStyle(color: Colors.grey),
                                                  border: InputBorder.none)),
                                        ),
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
                                            obscureText: true,
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
                                height: SizeConfig.blockSizeVertical * 3,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        this.female = true;
                                      });
                                    },
                                    child: Container(
                                      height: SizeConfig.blockSizeHorizontal * 15,
                                      width: SizeConfig.blockSizeHorizontal * 15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.grey, width:2.0),
                                          color: female? Color.fromRGBO(255,192,203, 1):AppTheme.colorPrimary
                                      ),
                                      child: Center(
                                        child: ImageIcon(
                                            AssetImage('assets/icons/icon_female.png')
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: SizeConfig.blockSizeHorizontal * 5,),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        this.female = false;
                                      });
                                    },
                                    child: Container(
                                      height: SizeConfig.blockSizeHorizontal * 15,
                                      width: SizeConfig.blockSizeHorizontal * 15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.grey, width:2.0),
                                          color: female? AppTheme.colorPrimary : Color.fromRGBO(200,220,250, 1)
                                      ),
                                      child: Center(
                                        child: ImageIcon(
                                            AssetImage('assets/icons/icon_male.png')
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 2,
                              ),
                              Row(
                                children: <Widget>[
                                    Checkbox(
                                      value: termsOfUse,
                                      onChanged: (bool value) {
                                        setState(() {
                                          termsOfUse = value;
                                        });
                                      },
                                  ),
                                  Expanded(
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                            fontSize: SizeConfig.blockSizeVertical * 2,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey),
                                        children: <TextSpan>[
                                          TextSpan(text: 'I agree '),
                                          TextSpan(
                                              text: 'terms and conditions',
                                              style: TextStyle(
                                                  decoration: TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()..onTap = () {
                                                //ToDo add terms and conditions
                                              }
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 3,
                              ),
                              Center(
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

  Future<DateTime> _selectDate(BuildContext context) => showDatePicker(context: context, initialDate: DateTime(2000), firstDate: DateTime(1900), lastDate: DateTime(2018));

}
