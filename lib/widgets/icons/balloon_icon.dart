// ignore_for_file: cascade_invocations, avoid_redundant_argument_values

import 'package:airbnb_passport/theme/theme.dart';
import 'package:flutter/material.dart';

class BalloonIcon extends StatelessWidget {
  const BalloonIcon({
    required this.size,
    super.key,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: const BalloonIconPainter(),
    );
  }
}

/// Custom painter for the balloon icon.
///
/// Made with https://fluttershapemaker.com/.
class BalloonIconPainter extends CustomPainter {
  const BalloonIconPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(
      size.width * 0.6666667,
      0,
    );
    path.cubicTo(
      size.width * 0.9125000,
      0,
      size.width * 1.125000,
      size.height * 0.1552941,
      size.width * 1.125000,
      size.height * 0.3235294,
    );
    path.cubicTo(
      size.width * 1.125000,
      size.height * 0.4661765,
      size.width * 0.9904167,
      size.height * 0.5961765,
      size.width * 0.7270833,
      size.height * 0.7141176,
    );
    path.lineTo(
      size.width * 0.8187500,
      size.height * 0.8000000,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.7812500,
        size.height * 0.8529412,
      ),
      radius: Radius.elliptical(
        size.width * 0.04708333,
        size.height * 0.03323529,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path.lineTo(
      size.width * 0.7083333,
      size.height * 0.8529412,
    );
    path.lineTo(
      size.width * 0.7083333,
      size.height * 0.9411765,
    );
    path.lineTo(
      size.width * 0.6250000,
      size.height * 0.9411765,
    );
    path.lineTo(
      size.width * 0.6250000,
      size.height * 0.8529412,
    );
    path.lineTo(
      size.width * 0.5520833,
      size.height * 0.8529412,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.5145833,
        size.height * 0.8000000,
      ),
      radius: Radius.elliptical(
        size.width * 0.04708333,
        size.height * 0.03323529,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path.lineTo(
      size.width * 0.6037500,
      size.height * 0.7158824,
    );
    path.cubicTo(
      size.width * 0.3416667,
      size.height * 0.6152941,
      size.width * 0.2083333,
      size.height * 0.4841176,
      size.width * 0.2083333,
      size.height * 0.3235294,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.6666667,
        0,
      ),
      radius: Radius.elliptical(
        size.width * 0.4583333,
        size.height * 0.3235294,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );

    path.close();

    path.moveTo(
      size.width * 0.6666667,
      size.height * 0.7550000,
    );
    path.lineTo(
      size.width * 0.6250000,
      size.height * 0.7941176,
    );
    path.lineTo(
      size.width * 0.7083333,
      size.height * 0.7941176,
    );
    path.close();
    path.moveTo(
      size.width * 0.6666667,
      size.height * 0.05882353,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.2916667,
        size.height * 0.3235294,
      ),
      radius: Radius.elliptical(
        size.width * 0.3750000,
        size.height * 0.2647059,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path.cubicTo(
      size.width * 0.2916667,
      size.height * 0.4588235,
      size.width * 0.4050000,
      size.height * 0.5714706,
      size.width * 0.6375000,
      size.height * 0.6617647,
    );
    path.lineTo(
      size.width * 0.6533333,
      size.height * 0.6679412,
    );
    path.lineTo(
      size.width * 0.6650000,
      size.height * 0.6720588,
    );
    path.lineTo(
      size.width * 0.6775000,
      size.height * 0.6664706,
    );
    path.cubicTo(
      size.width * 0.9116667,
      size.height * 0.5626471,
      size.width * 1.030833,
      size.height * 0.4535294,
      size.width * 1.040833,
      size.height * 0.3394118,
    );
    path.lineTo(
      size.width * 1.041667,
      size.height * 0.3314706,
    );
    path.lineTo(
      size.width * 1.041667,
      size.height * 0.3235294,
    );
    path.cubicTo(
      size.width * 1.041667,
      size.height * 0.1870588,
      size.width * 0.8662500,
      size.height * 0.05882353,
      size.width * 0.6666667,
      size.height * 0.05882353,
    );

    path.close();

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = DemoColors.dark;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
