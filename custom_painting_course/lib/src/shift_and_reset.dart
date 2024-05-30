import 'package:flutter/material.dart';

class ShiftAndResetExample extends StatelessWidget {
  const ShiftAndResetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Drawing a circle')),
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

    final greenPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..shader = const LinearGradient(colors: [Colors.green, Colors.blue])
          .createShader(
            Rect.fromCircle(center: center, radius: 50),
            textDirection: TextDirection.ltr
          );

    final whitePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..shader = const LinearGradient(colors: [Colors.yellow, Colors.red])
          .createShader(
            Rect.fromCircle(center: center, radius: 50),
            textDirection: TextDirection.ltr
          );

    final smallRect = Rect.fromCenter(center: center, width: radius, height: radius);
    final bigRect = Rect.fromCenter(center: center, width: radius * 2, height: radius * 2);

    final path = Path()..addRect(smallRect)..addRect(bigRect);

    canvas.drawPath(path, greenPaint);

    path.reset();

    path.addOval(smallRect);
    final translatedPath1 = path.shift(Offset(size.width / 4, 0));
    canvas.drawPath(translatedPath1, whitePaint);

    path.reset();

    path.addOval(smallRect);
    final translatedPath2 = path.shift(Offset(-size.width / 4, 0));
    canvas.drawPath(translatedPath2, whitePaint);

    path.reset();

    path.addOval(smallRect);
    final translatedPath3 = path.shift(Offset(0, size.height / 5.3));
    canvas.drawPath(translatedPath3, whitePaint);

    path.reset();

    path.addOval(smallRect);
    final translatedPath4 = path.shift(Offset(0, -size.height / 5.3));
    canvas.drawPath(translatedPath4, whitePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
