import 'package:expensex/constants.dart';
import 'package:expensex/helpers/DialogHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:expensex/screens/SignIn.dart';
import '../widgets/MoneyCard.dart';
import '../widgets/MoneyOverView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Budget Ray'),
//      ),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                        //    color: kDarkGrey,
                        child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Yannick Fumukani',
                              style: kBold,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Overview',
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xFFCCCCCC)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 25, 20, 20),
                        //    color: kDarkGrey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Balance',
                              style: TextStyle(
                                fontSize: 15,
                                color: kSecondary,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                RichText(
                                    text: TextSpan(
                                        text: '6500',
                                        style: TextStyle(fontSize: 35),
                                        children: [
                                      TextSpan(
                                          text: ' usd',
                                          style: TextStyle(fontSize: 15))
                                    ])),
                                Column(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.chartPie,
                                      size: 60,
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Excellent Money usage',
                                      style: TextStyle(color: kGreen),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

//            Container(
//              // TODO
//              height: 40,
//            //  height: double.minPositive,
//              color: kPink,
//            ),

            Container(
              child: Row(
                children: <Widget>[
                  MoneyCard(
                    bgColor: kSecondary,
                    icon: Icon(FontAwesomeIcons.chevronUp),
                    amount: 10045.48,
                    title: 'Income',
                    desc: 'Money you made',
                    btnIcon: FontAwesomeIcons.plus,
                  ),
                  MoneyCard(
                    bgColor: Colors.red,
                    icon: Icon(FontAwesomeIcons.chevronDown),
                    amount: 5789.08,
                    title: 'Expenses',
                    desc: 'Money you spent',
                    btnIcon: FontAwesomeIcons.minus,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              //  flex: 2,
              child: Container(
                child: Wrap(
                  children: <Widget>[
                    Center(
                      child: Text('Detailed Overview',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
//                  alignment: Alignment.center,
                      //  color: kDarkGrey,
                      child: Column(
                        //  verticalDirection: VerticalDirection.up,
                        //  crossAxisAlignment: CrossAxisAlignment.stretch,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          MoneyOverView(
                            expenses: 27.45,
                            incomes: 800,
                            period: 'Yesterday summary',
                          ),
                          MoneyOverView(
                            expenses: 300,
                            incomes: 1000,
                            period: 'Week summary',
                          ),
                          MoneyOverView(
                            expenses: 70,
                            incomes: 30,
                            period: 'Month summary',
                          ),
                          MoneyOverView(
                            expenses: 51,
                            incomes: 67,
                            period: 'Annual summary',
                          ),
                          MoneyOverView(
                            expenses: 0.00,
                            incomes: 0.00,
                            period: 'Last Year',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                  // Navigator.pushNamed(context, '/');

                DialogHelper.exit(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                //duration: Duration(seconds: 5),
                alignment: Alignment.center,
                width: double.infinity,
               // height: 60,
                color: kSecondary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Create new invoice',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(FontAwesomeIcons.plusCircle)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
