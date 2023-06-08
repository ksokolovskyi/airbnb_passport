// ignore_for_file: cascade_invocations, avoid_redundant_argument_values

import 'package:airbnb_passport/theme/theme.dart';
import 'package:flutter/material.dart';

class HeartIcon extends StatelessWidget {
  const HeartIcon({
    required this.size,
    super.key,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: const HeartIconPainter(),
    );
  }
}

/// Custom painter for the heart icon.
/// 
/// Made with https://fluttershapemaker.com/.
class HeartIconPainter extends CustomPainter {
  const HeartIconPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(
      size.width * 0.5714286,
      size.height * 1.166667,
    );
    path.cubicTo(
      size.width * 0.8214286,
      size.height * 0.9694583,
      size.width * 1.071429,
      size.height * 0.7500000,
      size.width * 1.071429,
      size.height * 0.4583333,
    );
    path.cubicTo(
      size.width * 1.071429,
      size.height * 0.3836667,
      size.width * 1.047036,
      size.height * 0.3090417,
      size.width * 0.9982143,
      size.height * 0.2520833,
    );
    path.cubicTo(
      size.width * 0.9493929,
      size.height * 0.1951667,
      size.width * 0.8854286,
      size.height * 0.1666667,
      size.width * 0.8214286,
      size.height * 0.1666667,
    );
    path.cubicTo(
      size.width * 0.7574643,
      size.height * 0.1666667,
      size.width * 0.6934643,
      size.height * 0.1951667,
      size.width * 0.6446786,
      size.height * 0.2520833,
    );
    path.lineTo(size.width * 0.5714286, size.height * 0.3375417);
    path.lineTo(size.width * 0.4982143, size.height * 0.2520833);
    path.cubicTo(
      size.width * 0.4493929,
      size.height * 0.1951667,
      size.width * 0.3854286,
      size.height * 0.1666667,
      size.width * 0.3214286,
      size.height * 0.1666667,
    );
    path.cubicTo(
      size.width * 0.2574643,
      size.height * 0.1666667,
      size.width * 0.1934643,
      size.height * 0.1951667,
      size.width * 0.1446786,
      size.height * 0.2520833,
    );
    path.cubicTo(
      size.width * 0.09585714,
      size.height * 0.3090417,
      size.width * 0.07142857,
      size.height * 0.3836667,
      size.width * 0.07142857,
      size.height * 0.4583333,
    );
    path.cubicTo(
      size.width * 0.07142857,
      size.height * 0.7500000,
      size.width * 0.3214286,
      size.height * 0.9694583,
      size.width * 0.5714286,
      size.height * 1.166667,
    );

    path.close();

    final strokePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = DemoColors.white;

    final fillPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = DemoColors.dark.withOpacity(0.6);

    canvas.drawPath(path, fillPaint);
    canvas.drawPath(path, strokePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
