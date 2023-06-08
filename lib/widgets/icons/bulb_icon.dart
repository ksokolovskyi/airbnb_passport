// ignore_for_file: cascade_invocations, avoid_redundant_argument_values

import 'package:airbnb_passport/theme/theme.dart';
import 'package:flutter/material.dart';

class BulbIcon extends StatelessWidget {
  const BulbIcon({
    required this.size,
    super.key,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: const BulbIconPainter(),
    );
  }
}

/// Custom painter for the bulb icon.
/// 
/// Made with https://fluttershapemaker.com/.
class BulbIconPainter extends CustomPainter {
  const BulbIconPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(
      size.width * 0.7272727,
      size.height * 0.03333333,
    );
    path.arcToPoint(
      Offset(
        size.width * 1.227273,
        size.height * 0.3900000,
      ),
      radius: Radius.elliptical(
        size.width * 0.5000000,
        size.height * 0.3666667,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path.lineTo(
      size.width * 1.227273,
      size.height * 0.4000000,
    );
    path.cubicTo(
      size.width * 1.227273,
      size.height * 0.5233333,
      size.width * 1.135000,
      size.height * 0.6380000,
      size.width * 0.9545455,
      size.height * 0.7433333,
    );
    path.lineTo(
      size.width * 0.9545455,
      size.height * 0.9776667,
    );
    path.cubicTo(
      size.width * 0.9545455,
      size.height * 1.008333,
      size.width * 0.9204545,
      size.height * 1.033333,
      size.width * 0.8786364,
      size.height * 1.033333,
    );
    path.lineTo(
      size.width * 0.5759091,
      size.height * 1.033333,
    );
    path.cubicTo(
      size.width * 0.5340909,
      size.height * 1.033333,
      size.width * 0.5000000,
      size.height * 1.008333,
      size.width * 0.5000000,
      size.height * 0.9776667,
    );
    path.lineTo(
      size.width * 0.5000000,
      size.height * 0.7433333,
    );
    path.cubicTo(
      size.width * 0.3250000,
      size.height * 0.6410000,
      size.width * 0.2331818,
      size.height * 0.5303333,
      size.width * 0.2272727,
      size.height * 0.4106667,
    );
    path.lineTo(
      size.width * 0.2272727,
      size.height * 0.4000000,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.7272727,
        size.height * 0.03333333,
      ),
      radius: Radius.elliptical(
        size.width * 0.5000000,
        size.height * 0.3666667,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );

    path.close();

    path.moveTo(
      size.width * 0.8636364,
      size.height * 0.9000000,
    );
    path.lineTo(
      size.width * 0.5909091,
      size.height * 0.9000000,
    );
    path.lineTo(
      size.width * 0.5909091,
      size.height * 0.9666667,
    );
    path.lineTo(
      size.width * 0.8636364,
      size.height * 0.9666667,
    );
    path.lineTo(
      size.width * 0.8636364,
      size.height * 0.9000000,
    );

    path.close();

    path.moveTo(
      size.width * 0.8636364,
      size.height * 0.7666667,
    );
    path.lineTo(
      size.width * 0.5909091,
      size.height * 0.7666667,
    );
    path.lineTo(
      size.width * 0.5909091,
      size.height * 0.8333333,
    );
    path.lineTo(
      size.width * 0.8636364,
      size.height * 0.8333333,
    );
    path.lineTo(
      size.width * 0.8636364,
      size.height * 0.7666667,
    );

    path.close();

    path.moveTo(
      size.width * 0.7272727,
      size.height * 0.1000000,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.3181818,
        size.height * 0.3993333,
      ),
      radius: Radius.elliptical(
        size.width * 0.4090909,
        size.height * 0.3000000,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path.lineTo(
      size.width * 0.3181818,
      size.height * 0.4090000,
    );
    path.cubicTo(
      size.width * 0.3227273,
      size.height * 0.5056667,
      size.width * 0.4000000,
      size.height * 0.5990000,
      size.width * 0.5531818,
      size.height * 0.6890000,
    );
    path.lineTo(
      size.width * 0.5722727,
      size.height * 0.7000000,
    );
    path.lineTo(
      size.width * 0.5904545,
      size.height * 0.7000000,
    );
    path.lineTo(
      size.width * 0.5909091,
      size.height * 0.3776667,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.8636364,
        size.height * 0.3776667,
      ),
      radius: Radius.elliptical(
        size.width * 0.1363636,
        size.height * 0.1000000,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path.lineTo(
      size.width * 0.8636364,
      size.height * 0.7000000,
    );
    path.lineTo(
      size.width * 0.8822727,
      size.height * 0.7000000,
    );
    path.lineTo(
      size.width * 0.9018182,
      size.height * 0.6886667,
    );
    path.cubicTo(
      size.width * 1.054545,
      size.height * 0.5986667,
      size.width * 1.131364,
      size.height * 0.5060000,
      size.width * 1.135909,
      size.height * 0.4100000,
    );
    path.lineTo(
      size.width * 1.136364,
      size.height * 0.4006667,
    );
    path.lineTo(
      size.width * 1.136364,
      size.height * 0.3916667,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.7272727,
        size.height * 0.1000000,
      ),
      radius: Radius.elliptical(
        size.width * 0.4090909,
        size.height * 0.3000000,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );

    path.close();

    path.moveTo(
      size.width * 0.7272727,
      size.height * 0.3443333,
    );
    path.lineTo(
      size.width * 0.7218182,
      size.height * 0.3446667,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.6818182,
        size.height * 0.3780000,
      ),
      radius: Radius.elliptical(
        size.width * 0.04545455,
        size.height * 0.03333333,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path.lineTo(
      size.width * 0.6818182,
      size.height * 0.7000000,
    );
    path.lineTo(
      size.width * 0.7727273,
      size.height * 0.7000000,
    );
    path.lineTo(
      size.width * 0.7727273,
      size.height * 0.3776667,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.7272727,
        size.height * 0.3443333,
      ),
      radius: Radius.elliptical(
        size.width * 0.04545455,
        size.height * 0.03333333,
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
