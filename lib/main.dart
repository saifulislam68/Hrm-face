import 'package:flutter/material.dart';
import 'package:hrm_face/hrm_face/location.dart';
import 'package:hrm_face/hrm_face/success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Location(),
    );
  }
}
