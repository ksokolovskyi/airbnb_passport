import 'dart:ui';

import 'package:flutter/material.dart';

class FrontPageRectTween extends RectTween {
  FrontPageRectTween({
    required super.begin,
    required super.end,
    required this.flightDirection,
  });

  final HeroFlightDirection flightDirection;

  @override
  Rect? lerp(double t) {
    final begin = this.begin;
    final end = this.end;

    if (begin == null || end == null) {
      return Rect.lerp(begin, end, t);
    }

    final centerLeft = flightDirection == HeroFlightDirection.push
        ? Tween<Offset>(
            begin: begin.centerLeft,
            end: end.centerRight,
          ).lerp(Curves.easeIn.transform(t))
        : Tween<Offset>(
            begin: begin.centerRight,
            end: end.centerLeft,
          ).lerp(Curves.easeIn.transform(t));

    final width = lerpDouble(begin.width, end.width, t)!;
    final height = lerpDouble(begin.height, end.height, t)!;

    return Rect.fromLTWH(
      centerLeft.dx,
      centerLeft.dy - height / 2.0,
      width,
      height,
    );
  }
}
