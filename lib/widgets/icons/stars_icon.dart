// ignore_for_file: cascade_invocations, avoid_redundant_argument_values

import 'package:airbnb_passport/theme/theme.dart';
import 'package:flutter/material.dart';

class StarsIcon extends StatelessWidget {
  const StarsIcon({
    required this.size,
    super.key,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: const StarsIconPainter(),
    );
  }
}

/// Custom painter for the stars icon.
/// 
/// Made with https://fluttershapemaker.com/.
class StarsIconPainter extends CustomPainter {
  const StarsIconPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(
      size.width * 0.2000000,
      size.height * 0.7666667,
    );
    path.lineTo(
      size.width * 0.2000000,
      size.height * 0.8666667,
    );
    path.lineTo(
      size.width * 0.3000000,
      size.height * 0.8666667,
    );
    path.lineTo(
      size.width * 0.3000000,
      size.height * 0.9333333,
    );
    path.lineTo(
      size.width * 0.2000000,
      size.height * 0.9333333,
    );
    path.lineTo(
      size.width * 0.2000000,
      size.height * 1.033333,
    );
    path.lineTo(
      size.width * 0.1333333,
      size.height * 1.033333,
    );
    path.lineTo(
      size.width * 0.1333333,
      size.height * 0.9333333,
    );
    path.lineTo(
      size.width * 0.03333333,
      size.height * 0.9333333,
    );
    path.lineTo(
      size.width * 0.03333333,
      size.height * 0.8666667,
    );
    path.lineTo(
      size.width * 0.1333333,
      size.height * 0.8666667,
    );
    path.lineTo(
      size.width * 0.1333333,
      size.height * 0.7666667,
    );
    path.lineTo(
      size.width * 0.2000000,
      size.height * 0.7666667,
    );

    path.close();

    path.moveTo(
      size.width * 0.5013333,
      size.height * 0.1236667,
    );
    path.cubicTo(
      size.width * 0.5106667,
      size.height * 0.09366667,
      size.width * 0.5520000,
      size.height * 0.09200000,
      size.width * 0.5640000,
      size.height * 0.1196667,
    );
    path.lineTo(
      size.width * 0.5653333,
      size.height * 0.1236667,
    );
    path.lineTo(
      size.width * 0.6523333,
      size.height * 0.4143333,
    );
    path.lineTo(
      size.width * 0.9430000,
      size.height * 0.5013333,
    );
    path.cubicTo(
      size.width * 0.9716667,
      size.height * 0.5100000,
      size.width * 0.9743333,
      size.height * 0.5480000,
      size.width * 0.9503333,
      size.height * 0.5620000,
    );
    path.lineTo(
      size.width * 0.9470000,
      size.height * 0.5640000,
    );
    path.lineTo(
      size.width * 0.9430000,
      size.height * 0.5653333,
    );
    path.lineTo(
      size.width * 0.6523333,
      size.height * 0.6523333,
    );
    path.lineTo(
      size.width * 0.5653333,
      size.height * 0.9430000,
    );
    path.cubicTo(
      size.width * 0.5566667,
      size.height * 0.9716667,
      size.width * 0.5186667,
      size.height * 0.9743333,
      size.width * 0.5046667,
      size.height * 0.9503333,
    );
    path.lineTo(
      size.width * 0.5026667,
      size.height * 0.9470000,
    );
    path.lineTo(
      size.width * 0.5013333,
      size.height * 0.9430000,
    );
    path.lineTo(
      size.width * 0.4143333,
      size.height * 0.6523333,
    );
    path.lineTo(
      size.width * 0.1236667,
      size.height * 0.5653333,
    );
    path.cubicTo(
      size.width * 0.09466667,
      size.height * 0.5566667,
      size.width * 0.09233333,
      size.height * 0.5186667,
      size.width * 0.1163333,
      size.height * 0.5046667,
    );
    path.lineTo(
      size.width * 0.1196667,
      size.height * 0.5026667,
    );
    path.lineTo(
      size.width * 0.1236667,
      size.height * 0.5013333,
    );
    path.lineTo(
      size.width * 0.4143333,
      size.height * 0.4143333,
    );
    path.lineTo(
      size.width * 0.5013333,
      size.height * 0.1236667,
    );

    path.close();

    path.moveTo(
      size.width * 0.5333333,
      size.height * 0.2493333,
    );
    path.lineTo(
      size.width * 0.4730000,
      size.height * 0.4506667,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.4546667,
        size.height * 0.4716667,
      ),
      radius: Radius.elliptical(
        size.width * 0.03333333,
        size.height * 0.03333333,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path.lineTo(
      size.width * 0.4506667,
      size.height * 0.4730000,
    );
    path.lineTo(
      size.width * 0.2493333,
      size.height * 0.5333333,
    );
    path.lineTo(
      size.width * 0.4506667,
      size.height * 0.5936667,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.4696667,
        size.height * 0.6086667,
      ),
      radius: Radius.elliptical(
        size.width * 0.03333333,
        size.height * 0.03333333,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path.lineTo(
      size.width * 0.4716667,
      size.height * 0.6120000,
    );
    path.lineTo(
      size.width * 0.4730000,
      size.height * 0.6160000,
    );
    path.lineTo(
      size.width * 0.5333333,
      size.height * 0.8173333,
    );
    path.lineTo(
      size.width * 0.5936667,
      size.height * 0.6160000,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.6086667,
        size.height * 0.5970000,
      ),
      radius: Radius.elliptical(
        size.width * 0.03333333,
        size.height * 0.03333333,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path.lineTo(
      size.width * 0.6120000,
      size.height * 0.5950000,
    );
    path.lineTo(
      size.width * 0.6160000,
      size.height * 0.5936667,
    );
    path.lineTo(
      size.width * 0.8173333,
      size.height * 0.5333333,
    );
    path.lineTo(
      size.width * 0.6160000,
      size.height * 0.4730000,
    );
    path.arcToPoint(
      Offset(
        size.width * 0.5970000,
        size.height * 0.4583333,
      ),
      radius: Radius.elliptical(
        size.width * 0.03333333,
        size.height * 0.03333333,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path.lineTo(
      size.width * 0.5950000,
      size.height * 0.4543333,
    );
    path.lineTo(
      size.width * 0.5936667,
      size.height * 0.4506667,
    );
    path.lineTo(
      size.width * 0.5333333,
      size.height * 0.2493333,
    );

    path.close();

    path.moveTo(
      size.width * 0.9333333,
      size.height * 0.03333333,
    );
    path.lineTo(
      size.width * 0.9333333,
      size.height * 0.1333333,
    );
    path.lineTo(
      size.width * 1.033333,
      size.height * 0.1333333,
    );
    path.lineTo(
      size.width * 1.033333,
      size.height * 0.2000000,
    );
    path.lineTo(
      size.width * 0.9333333,
      size.height * 0.2000000,
    );
    path.lineTo(
      size.width * 0.9333333,
      size.height * 0.3000000,
    );
    path.lineTo(
      size.width * 0.8666667,
      size.height * 0.3000000,
    );
    path.lineTo(
      size.width * 0.8666667,
      size.height * 0.2000000,
    );
    path.lineTo(
      size.width * 0.7666667,
      size.height * 0.2000000,
    );
    path.lineTo(
      size.width * 0.7666667,
      size.height * 0.1333333,
    );
    path.lineTo(
      size.width * 0.8666667,
      size.height * 0.1333333,
    );
    path.lineTo(
      size.width * 0.8666667,
      size.height * 0.03333333,
    );
    path.lineTo(
      size.width * 0.9333333,
      size.height * 0.03333333,
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
