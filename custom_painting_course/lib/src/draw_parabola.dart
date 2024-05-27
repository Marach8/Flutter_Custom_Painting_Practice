import 'dart:math';

import 'package:flutter/material.dart';

class DrawParabola extends StatelessWidget {
  const DrawParabola({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Drawing a polygon')),
        body: Center(
          child: Container(
            color: Colors.black26,
            child: CustomPaint(size: const Size(300, 400), painter: Painter()),
          ),
        ));
  }
}

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final paint1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..shader = const LinearGradient(colors: [Colors.green, Colors.blue])
          .createShader(Rect.fromCircle(center: center, radius: 50),
              textDirection: TextDirection.ltr);

    final rect = Rect.fromCircle(center: center, radius: radius);
    Path path = Path()
      ..moveTo(0, size.height / 2)
      ..conicTo(size.width / 2, -size.height, size.width, size.height / 2, 0.5);

    canvas.drawPath(path, paint1);

    Path path1 = Path()
      ..moveTo(0, size.height / 2)
      ..quadraticBezierTo(
        size.width / 2,
        size.height,
        size.width,
        size.height / 2,
      );

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
