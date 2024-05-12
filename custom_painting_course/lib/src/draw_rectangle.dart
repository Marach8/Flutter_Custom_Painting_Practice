import 'package:flutter/material.dart';

class DrawRectangleExample extends StatelessWidget {
  const DrawRectangleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawing a rectangle')
      ),
      body: Center(
        child: CustomPaint(
          size: const Size(300, 400),
          painter: Painter()
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
    paint1.style = PaintingStyle.stroke;

    final paint2 = Paint();
    paint2.color = Colors.green;
    paint2.style = PaintingStyle.fill;

    final center = Offset(size.width/2, size.height/2);
    for(int i = 2; i < 20; i++){
      canvas.drawCircle(
        center,
        size.width/i,
        paint1
      );

      canvas.drawRect(
        Rect.fromCircle(
          center: center,
          radius: size.width/i
        ),
        paint1
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}