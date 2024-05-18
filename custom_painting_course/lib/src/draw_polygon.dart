import 'dart:ui';
import 'package:flutter/material.dart';

class DrawPolygon extends StatelessWidget {
  const DrawPolygon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawing a polygon')
      ),
      body: Center(
        child: Container(
          //color: Colors.blue,
          child: CustomPaint(
            size: const Size(300, 400),
            painter: Painter()
          ),
        ),
      )
    );
  }
}


class Painter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width/2, size.height/2);
    final radius = size.width/2;

    final paint1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..shader = const LinearGradient(
          colors: [Colors.green, Colors.blue]
        ).createShader(
          Rect.fromCircle(center: center, radius: radius),
          textDirection: TextDirection.ltr
        );

    final List<Offset> points1 = [
      Offset.zero,
      Offset(size.width, 0),
      Offset(size.width/2, size.height/2),
      Offset.zero
    ];

    final List<Offset> points2 = [
      Offset(0, size.height),
      Offset(size.width/2, size.height/2),
      Offset(size.width, size.height),
      Offset(0, size.height),
    ];
    
    canvas.drawPoints(
      PointMode.polygon,
      points1,
      paint1
    );

    canvas.drawPoints(
      PointMode.polygon,
      points2,
      paint1
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}