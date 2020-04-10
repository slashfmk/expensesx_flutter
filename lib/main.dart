import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_page.dart';
import 'package:expensex/screens/SignIn.dart';
import 'package:expensex/screens/SignUp.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      title: 'Expenses x',
      theme: ThemeData.dark().copyWith(
       // primarySwatch: Colors.blue,
        primaryColor: kDarkBlue,
        accentColor: kSecondary, // color for forms and others
        scaffoldBackgroundColor: kDarkBlue,
        textTheme: TextTheme(body1: TextStyle(color: Colors.white, fontSize: 12)),
      ),
      initialRoute: '/signIn',
      routes: {
        '/': (context) => HomePage(),
        '/signIn': (context) => SignIn(),
        '/signUp': (context) => SignUp()
      },
      // home: HomePage(),
    );
  }
}
