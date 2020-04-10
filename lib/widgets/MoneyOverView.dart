import 'package:expensex/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyOverView extends StatefulWidget {
  double incomes;
  double expenses;
  String period;

  MoneyOverView({this.incomes, this.expenses, this.period});

  @override
  _MoneyOverViewState createState() => _MoneyOverViewState();
}

class _MoneyOverViewState extends State<MoneyOverView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  double getUsagePercentage(double expenses, double incomes) {
    return (expenses * 100) / (incomes);
  }

  Icon usageLogo(double amount) {
    Icon icon;
    if (amount > 50) {
      icon = Icon(
        Icons.data_usage,
        color: Colors.red,
      );
    } else if (amount <= 50 && amount >= 30) {
      icon = Icon(
        Icons.data_usage,
        color: Colors.orange,
      );
    } else {
      icon = Icon(
        Icons.data_usage,
        color: Colors.green,
      );
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
          color: kDarkGrey, borderRadius: BorderRadiusDirectional.circular(5)),
      child: Row(
        // Main row of the components
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: usageLogo(
              getUsagePercentage(widget.expenses, widget.incomes),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.period,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
                Text('Balance: ${widget.incomes - widget.expenses} usd',
                    style: TextStyle(fontSize: 13, color: Colors.grey)),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '${widget.incomes.toStringAsFixed(2)} ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: kSecondary,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(""),
                      width: 5,
                      height: 9,
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                  Text('${widget.expenses.toStringAsFixed(2)} ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),

                  Container(
                    decoration: BoxDecoration(
                        color: kRed,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(""),
                    width: 5,
                    height: 9,
                  )
                ]),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Icon(
              FontAwesomeIcons.chevronRight,
              size: 15,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
