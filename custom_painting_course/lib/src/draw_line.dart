import 'package:flutter/material.dart';

class DrawLineExample extends StatelessWidget {
  const DrawLineExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawing a line')
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
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
    final paint1 = Paint();
    paint1.color = Colors.white;
    paint1.strokeWidth = 2;

    final paint2 = Paint();
    paint2.color = Colors.red;
    paint2.strokeCap = StrokeCap.butt;
    paint2.strokeWidth = 6;
    canvas.drawLine(
      Offset.zero,
      Offset(size.width, size.height),
      paint1,
    );

    canvas.drawLine(
      Offset(size.width, 0),
      Offset(0, size.height),
      paint2,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}