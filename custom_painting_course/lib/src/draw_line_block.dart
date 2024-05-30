import 'package:flutter/material.dart';

class DrawLineBloc extends StatelessWidget {
  const DrawLineBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Practice combining LineTo')),
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
    final width = size.width;
    final height = size.height;

    final paint1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..shader = const LinearGradient(colors: [Colors.green, Colors.blue])
          .createShader(Rect.fromCircle(center: center, radius: 50),
              textDirection: TextDirection.ltr);
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(width / 2, 0)
      ..lineTo(width / 2, height / 2)
      ..lineTo(width, height / 2)
      ..lineTo(width, height);

    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
