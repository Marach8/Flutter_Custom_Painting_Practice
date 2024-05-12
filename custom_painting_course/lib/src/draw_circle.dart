import 'package:flutter/material.dart';

class DrawCircleExample extends StatelessWidget {
  const DrawCircleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawing a circle')
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

    for(int i = 2; i < 20; i++){
      canvas.drawCircle(
        Offset(size.width/2, size.height/2),
        size.width/i,
        paint1
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}