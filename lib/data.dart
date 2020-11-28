import 'package:flutter/material.dart';
Color primaryColor = Colors.teal[100];

List<BoxShadow> customShadow = [

  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      offset: Offset(-5, -5),
      blurRadius: 20),

  BoxShadow(
    color: Colors.teal[200],
    spreadRadius: 2,
    offset: Offset(7,7),
    blurRadius: 10,
  ),
];