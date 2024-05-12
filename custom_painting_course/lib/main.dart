import 'package:custom_painting_course/src/draw_circle.dart';
import 'package:custom_painting_course/src/draw_diff_two_rectangles.dart';
import 'package:custom_painting_course/src/draw_line.dart';
import 'package:custom_painting_course/src/draw_oval.dart';
import 'package:custom_painting_course/src/draw_polygon.dart';
import 'package:custom_painting_course/src/draw_rectangle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const DrawPolygon(),
    );
  }
}