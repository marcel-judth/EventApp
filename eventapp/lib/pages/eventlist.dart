import 'package:eventapp/pages/appbar/CustomAppBar.dart';
import 'package:eventapp/pages/eventlistResults.dart';
import 'package:eventapp/pages/sidebar/navigation_bloc.dart';
import 'package:eventapp/shapes/CustomShapeClipper.dart';
import 'package:flutter/material.dart';
import '../Styling/styles.dart';

List<String> locations = ['Villach (VIH)', 'Klagenfurt (KLU)'];
TextStyle dropDownLabelStyle = TextStyle(color: Colors.white, fontSize: 16.0);
TextStyle dropDownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 18.0);

class EventListPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            EventListTopPart(),
            EventListBottomPart,
            EventListBottomPart
          ],
        ),
      ),
    );
  }
}

class EventListTopPart extends StatefulWidget {
  @override
  _EventListTopPartState createState() => _EventListTopPartState();
}

class _EventListTopPartState extends State<EventListTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppTheme.colorAccent, AppTheme.colorGradient])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      PopupMenuButton(
                        child: Row(
                          children: <Widget>[
                            Text(locations[0], style: dropDownLabelStyle),
                            Icon(Icons.keyboard_arrow_down,
                                color: Colors.white),
                          ],
                        ),
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuItem<int>>[
                          PopupMenuItem(
                            child: Text(
                              locations[0],
                              style: dropDownMenuItemStyle,
                            ),
                            value: 0,
                          ),
                          PopupMenuItem(
                            child: Text(
                              locations[1],
                              style: dropDownMenuItemStyle,
                            ),
                            value: 1,
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.settings, color: Colors.white)
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text('What do you\n want to do?',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: TextField(
                      controller: TextEditingController(text: locations[0]),
                      style: dropDownMenuItemStyle,
                      cursorColor: AppTheme.colorAccent,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32, vertical: 14),
                          border: InputBorder.none,
                          suffixIcon: Material(
                            elevation: 2.0,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            child: InkWell(
                              child: Icon(
                                Icons.search,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EventListResults()));
                              },
                            ),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   mainAxisSize: MainAxisSize.min,
                //   children: <Widget>[
                //     ChoiceChip(
                //       icon: Icons.cake,
                //       text: "Party",
                //     ),
                //     SizedBox(
                //       width: 8.0,
                //     ),
                //     ChoiceChip(
                //       icon: Icons.outlined_flag,
                //       text: "hiking",
                //     )
                //   ],
                // )
              ],
            ),
          ),
        )
      ],
    );
  }
}

const viewAllStyle = TextStyle(fontSize: 14.0, color: AppTheme.colorAccent);

var EventListBottomPart = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: 16.0,
          ),
          Text(
            "Currently Watched items",
            style: dropDownMenuItemStyle,
          ),
          Spacer(),
          Text(
            "View All(12)",
            style: viewAllStyle,
          )
        ],
      ),
    ),
    Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: cityCards,
      ),
    )
  ],
);

List<CityCard> cityCards = [
  CityCard(
    imagePath: "assets/images/lasvegas.jpg",
    cityName: "Las vegas",
    monthyear: "Feb 2019",
    discount: "45",
    oldPrice: "4299",
    distance: "2km",
  ),
  CityCard(
    imagePath: "assets/images/athens.jpg",
    cityName: "Athens",
    monthyear: "Apr 2019",
    discount: "50",
    oldPrice: "4159",
    distance: "10km",
  ),
  CityCard(
    imagePath: "assets/images/sydney.jpeg",
    cityName: "Sydney",
    monthyear: "Dec 2018",
    discount: "40",
    oldPrice: "2399",
    distance: "12km",
  ),
];

class CityCard extends StatelessWidget {
  final String imagePath, cityName, monthyear, discount, oldPrice, distance;

  CityCard(
      {this.imagePath,
      this.cityName,
      this.monthyear,
      this.discount,
      this.oldPrice,
      this.distance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 210,
                  width: 160,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 0.0,
                    bottom: 0.0,
                    width: 160.0,
                    height: 70.0,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.1)
                          ])),
                    )),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(cityName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18.0)),
                          Text(monthyear,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 14.0)),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 2.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Text(
                          "$discount%",
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              Text(
                "$distance km",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "(200/10)",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ChoiceChip extends StatefulWidget {
  IconData icon;
  String text;

  ChoiceChip({this.icon, this.text});
  @override
  _ChoiceChipState createState() => _ChoiceChipState();
}

class _ChoiceChipState extends State<ChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          widget.icon,
          size: 22.0,
          color: Colors.white,
        ),
        Text(
          widget.text,
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        )
      ],
    );
  }
}
