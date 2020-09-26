import 'package:Instagram/screen/App.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Concept UI",
      home: App(),
      theme: ThemeData(
          //scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 0, textTheme: Typography.blackCupertino)),
    );
  }
}
