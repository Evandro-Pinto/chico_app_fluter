import 'package:flutter/material.dart';
import 'package:helloworld/core/colors.dart';
import 'package:helloworld/ui/pages/home/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chico Plus',
      theme: ThemeData(
        primarySwatch: appPrimaryMaterialColor,
      ),
      home: HomePage(),
    );
  }
}

