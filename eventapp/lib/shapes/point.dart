import 'package:flutter/material.dart';

class Point extends StatelessWidget {
  double top;
  double left;
  double radius;
  double blurRadius;
  Color color;

  Point({this.top, this.left, this.radius, this.color, this.blurRadius});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: blurRadius,
            )
          ], // changes position of shadow
        ),
      ),
    );
  }
}