import 'package:flutter/material.dart';
import 'package:learnpro/screens/catalog.dart';
import 'package:learnpro/screens/login.dart';


void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => login(),
        '/catalog':(context) =>ListOfItems()
      },
    );
  }
}

