import 'dart:math';
import 'package:flutter/material.dart';

class CombinePathExample extends StatelessWidget {
  const CombinePathExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Drawing a polygon')),
        body: Center(
          child: CustomPaint(size: const Size(300, 400), painter: Painter()),
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
          .createShader(
            Rect.fromCircle(center: center, radius: 50),
            textDirection: TextDirection.ltr
          );

    final rect1 = Rect.fromCenter(
      center: Offset(2 * size.width/3, size.height/2),
      width: 200,
      height: 200
    );

    final rect2 = Rect.fromCenter(
      center: Offset(size.width/3, size.height/2), 
      width: 200,
      height: 200
    );


    final path = Path()..addOval(rect1);
    final path2 = Path()..addOval(rect2);
    canvas.drawPath(
      Path.combine(PathOperation.xor, path, path2),
      paint1
    );

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
