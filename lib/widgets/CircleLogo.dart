import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:expensex/constants.dart';

class CircleLogo extends StatelessWidget {
  final IconData icon;

  CircleLogo({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: kTextGrey),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        this.icon,
        color: kTextGrey,
        size: 16,
      ),
    );
  }
}
