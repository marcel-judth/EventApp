import 'package:eventapp/Styling/styles.dart';
import 'package:eventapp/shapes/CustomShapeClipper.dart';
import 'package:flutter/material.dart';

TextStyle dropDownLabelStyle = TextStyle(color: Colors.white, fontSize: 16.0);
TextStyle dropDownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 18.0);

class EventListResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search results"),
        backgroundColor: AppTheme.colorAccent,
        elevation: 0.0,
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            EventListResultTopPart(),
            SizedBox(
              height: 20,
            ),
            EventListResultBottomPart()
          ],
        ),
      ),
    );
  }
}

class EventListResultTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [AppTheme.colorAccent, AppTheme.colorGradient],
            )),
            height: 160.0,
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              elevation: 10.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Villach (VIH)',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Text(
                            'Sport Event',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.import_export,
                        color: Colors.black,
                        size: 32.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class EventListResultBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Best events nearby",
              style: dropDownMenuItemStyle,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListView(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
            ],
          )
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Event 1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Text(
                        '(Sport)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Color(0xFFE6E6),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 8.0,
                    children: <Widget>[
                      EventDetailChip(
                          iconData: Icons.calendar_today, label: 'June 2019'),
                      EventDetailChip(
                          iconData: Icons.time_to_leave, label: '14:00'),
                      EventDetailChip(iconData: Icons.star, label: '4.4'),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            right: 0.0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Text(
                  "2km",
                  style: TextStyle(
                      color: AppTheme.colorAccent,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: AppTheme.colorAccent2,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                )),
          )
        ],
      ),
    );
  }
}

class EventDetailChip extends StatelessWidget {
  final IconData iconData;
  final String label;

  EventDetailChip({this.iconData, this.label});

  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(label),
      labelStyle: TextStyle(color: Colors.black, fontSize: 14.0),
      backgroundColor: Colors.white,
      avatar: Icon(
        iconData,
        size: 14.0,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
