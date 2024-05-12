import 'package:flutter/material.dart';

class DrawDiffRectangles extends StatelessWidget {
  const DrawDiffRectangles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawing a circle')
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
      ..style = PaintingStyle.fill
      ..shader = const LinearGradient(
          colors: [Colors.green, Colors.blue]
        ).createShader(
          Rect.fromCircle(center: center, radius: radius),
          textDirection: TextDirection.ltr
        );
    
    canvas.drawDRRect(
      RRect.fromRectAndRadius(
        Rect.fromCircle(center: center, radius: size.width/2),
        const Radius.circular(10)
      ),
      RRect.fromRectAndRadius(
        Rect.fromCircle(center: center, radius: size.width/4),
        const Radius.circular(6)
      ),
      paint1
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}