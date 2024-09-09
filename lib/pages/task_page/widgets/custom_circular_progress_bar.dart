import 'dart:math';
import 'package:flutter/material.dart';

class CustomCircularProgressBar extends StatelessWidget {
  final double value;
  final Color color;
  final Size size;
  final double strokeWidth;

  const CustomCircularProgressBar({
    super.key,
    required this.value,
    this.color = Colors.blue,
    this.size = const Size(75, 75),
    this.strokeWidth = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size: size, // Adjust the size as needed
        painter: _CircularProgressBarPainter(value, color, strokeWidth),
      ),
    );
  }
}

class _CircularProgressBarPainter extends CustomPainter {
  final double value;
  final Color color;
  final double strokeWidth;

  _CircularProgressBarPainter(this.value, this.color, this.strokeWidth);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth // Adjust the stroke width
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 10; // Adjust the radius as needed

    const startAngle = -pi / 2;
    final sweepAngle = 2 * pi * value;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );

    // Draw the percentage text
    final textPainter = TextPainter(
      text: TextSpan(
        text: '${(value * 100).toStringAsFixed(0)}%',
        style: const TextStyle(
          fontSize: 21.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(
        canvas,
        Offset(center.dx - textPainter.width / 2,
            center.dy - textPainter.height / 2));
  }

  @override
  bool shouldRepaint(_CircularProgressBarPainter oldDelegate) =>
      value != oldDelegate.value || color != oldDelegate.color;
}
