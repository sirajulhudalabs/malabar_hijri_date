import 'package:flutter/material.dart';
import 'package:malabar_hijri/malabar_hijri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MalabarHijriHome(),
    );
  }
}

class MalabarHijriHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: MalabarHijriDate(),
    );
  }
}
