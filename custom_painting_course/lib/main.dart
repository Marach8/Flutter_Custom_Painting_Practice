import 'package:custom_painting_course/src/draw_arc.dart';
import 'package:custom_painting_course/src/draw_line_block.dart';
import 'package:custom_painting_course/src/draw_parabola.dart';
import 'package:custom_painting_course/src/draw_polygon.dart';
import 'package:custom_painting_course/src/shift_and_reset.dart';
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
      home: const ShiftAndResetExample(),
    );
  }
}
