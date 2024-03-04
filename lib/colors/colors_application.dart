import 'package:flutter/material.dart';

class ColorsApplication{

   static Color scaffoldColor = const Color.fromARGB(255, 255, 255, 255);
   static const Color appBarColor = Colors.grey;
   static const Color container = Color.fromARGB(82, 34, 34, 34);
   
}

class CustomTextStyles {
  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16.0,
    color: Colors.grey,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 18.0,
    color: Colors.white,
  );
}