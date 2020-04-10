import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_page.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> with SingleTickerProviderStateMixin {
  String _username = '';
  String _password = '';
  String _feedBack = '';
  AnimationController controller;

  void validate() {
    setState(() {
      if (this._username == '' || this._password == '') {
        this._password == '' ? this._feedBack = "Password field is empty!" : "";
        this._username == '' ? this._feedBack = "Username field is empty!" : "" ;
        //this._feedBack = "Please fill out all field!!";
      } else {
        if (this._username == 'admin' && this._password == '1234') {
          Navigator.pushNamed(context, '/');
        } else {
          this._feedBack = 'Unknowm account !';
        }

        // this._feedBack = '';
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._username = '';
    this._password = '';
    this._feedBack = '';

    this.controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);

    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Padding(
        padding: EdgeInsets.all(40),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      //  mainAxisSize: MainAxisSize.min,
                      children: <Widget>[


                        Icon(
                          FontAwesomeIcons.googleWallet,
                          size: 100,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Welcome to Expense x',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Your financial health matters!',
                          style: TextStyle(color: kTextGrey),
                        ),
//
                        SizedBox(
                          height: 20,
                        ),
                        Text(_feedBack,
                            style: TextStyle(color: Colors.red[400], fontSize: 16))
                      ],
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      obscureText: false,
                      onChanged: (value) {
                        this._username = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: TextFormField(
                      obscureText: true,
                      onChanged: (value) {
                        this._password = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Have an account? Login instead',
                          style: TextStyle(color: kTextGrey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20),
                    child: FlatButton(
                      disabledColor: Colors.black,
                      onPressed: (() {
                        this.validate();
                      }),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Sign In'),
                          SizedBox(width: 10),
                          //   Icon(FontAwesomeIcons.chevronCircleRight),
                        ],
                      ),
                      color: kSecondary,
                      padding: EdgeInsets.all(20),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

//AnnotatedRegion<SystemUiOverlayStyle>(
//value: SystemUiOverlayStyle.light,
//child:
