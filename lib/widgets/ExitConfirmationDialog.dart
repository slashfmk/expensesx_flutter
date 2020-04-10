import 'package:expensex/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ExitConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        //margin: EdgeInsets.all(3),
       // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kDarkBlue, 
            borderRadius: BorderRadius.circular(10) ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
            //  margin: EdgeInsets.all(20),
            //  height: 20,
              padding: EdgeInsets.all(10),
             // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kGreen
              ),
              child: Text(
                "Add your expenses",
                style: TextStyle(fontSize: 14),
              ),

            ),
            Container(
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                obscureText: false,
                onChanged: (value) => {},
                decoration: InputDecoration(
                    labelText: "Amount", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextField(
                maxLines: 3,
                decoration: InputDecoration(
                    labelText: "Description", border: OutlineInputBorder()),
              ),
            ),
            Container(

            )
          ],
        ),
      );
}
