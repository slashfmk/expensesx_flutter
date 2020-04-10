import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import 'CircleLogo.dart';

class MoneyCard extends StatelessWidget {
  final Color bgColor;
  final double amount;
  final String title;
  final Icon icon;
  final String desc;
  final IconData btnIcon;

  MoneyCard({this.bgColor, this.desc, this.title, this.amount, this.icon, @required this.btnIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
       // height: 250,
        padding: EdgeInsets.symmetric(vertical: 25),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kDarkGrey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  this.title.toString(),
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  width: 5,
                ),
                this.icon
              ],
            ),
            Text(
              this.amount.toString(),
              style: TextStyle(fontSize: 28, color: this.bgColor, fontWeight: FontWeight.w600),
            ),
            Text('98.07 %'),
            Text(this.desc),
            CircleLogo(icon: this.btnIcon),
          ],
        ),
      ),
    );
  }
}


