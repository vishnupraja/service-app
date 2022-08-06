import 'package:flutter/material.dart';
import 'package:serviceapp/fileshared.dart';
import 'package:serviceapp/homesceen%20(1).dart';
import 'package:serviceapp/listview%20builder.dart';
import 'package:serviceapp/spalsh.dart';
import 'package:serviceapp/urbonfoody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Foody(),
      debugShowCheckedModeBanner: false,
    );
  }
}
