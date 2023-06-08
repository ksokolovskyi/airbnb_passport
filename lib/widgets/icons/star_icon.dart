// ignore_for_file: cascade_invocations, avoid_redundant_argument_values

import 'package:airbnb_passport/theme/theme.dart';
import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {
  const StarIcon({
    required this.size,
    super.key,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: const StarIconPainter(),
    );
  }
}

/// Custom painter for the star icon.
/// 
/// Made with https://fluttershapemaker.com/.
class StarIconPainter extends CustomPainter {
  const StarIconPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(
      size.width * 0.4501640,
      size.height * 0.04922070,
    );
    path.lineTo(
      size.width * 0.3271697,
      size.height * 0.3261845,
    );
    path.lineTo(
      size.width * 0.03310468,
      size.height * 0.3657731,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.01694005,
        size.height * 0.4198878,
      ),
      radius: Radius.elliptical(
        size.width * 0.02982404,
        size.height * 0.03117207,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path.lineTo(
      size.width * 0.2344468,
      size.height * 0.6245324,
    );
    path.lineTo(
      size.width * 0.1758425,
      size.height * 0.9316397,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.2200716,
        size.height * 0.9647132,
      ),
      radius: Radius.elliptical(
        size.width * 0.02982404,
        size.height * 0.03117207,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path.lineTo(
      size.width * 0.4771846,
      size.height * 0.8089464,
    );
    path.lineTo(
      size.width * 0.7344169,
      size.height * 0.9647132,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.7786162,
        size.height * 0.9316708,
      ),
      radius: Radius.elliptical(
        size.width * 0.02982404,
        size.height * 0.03117207,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path.lineTo(
      size.width * 0.7200119,
      size.height * 0.6245324,
    );
    path.lineTo(
      size.width * 0.9375186,
      size.height * 0.4198878,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.9213838,
        size.height * 0.3658042,
      ),
      radius: Radius.elliptical(
        size.width * 0.02982404,
        size.height * 0.03117207,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path.lineTo(
      size.width * 0.6273188,
      size.height * 0.3261845,
    );
    path.lineTo(
      size.width * 0.5042350,
      size.height * 0.04922070,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.4501342,
        size.height * 0.04922070,
      ),
      radius: Radius.elliptical(
        size.width * 0.02982404,
        size.height * 0.03117207,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
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
