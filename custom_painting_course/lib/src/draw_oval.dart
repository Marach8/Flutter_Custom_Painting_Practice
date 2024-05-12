import 'package:flutter/material.dart';

class DrawOvalExample extends StatelessWidget {
  const DrawOvalExample({super.key});

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
    final center = Offset(size.width/2, size.height/2);

    for(int i = 1; i < 20; i++){
      canvas.drawOval(
        Rect.fromCenter(
          center: center,
          width: size.width/i,
          height: size.height/i
        ),
        paint1
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}