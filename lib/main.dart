import 'package:fitness/ui/bodybuildingposture/BodybuildingPostureView.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finess',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BodybuildingPostureView(title: 'Finess'),
    );
  }
}

