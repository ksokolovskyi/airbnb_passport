import 'dart:ui';

import 'package:flutter/material.dart';

class BackPageRectTween extends RectTween {
  BackPageRectTween({
    required super.begin,
    required super.end,
  });

  @override
  Rect? lerp(double t) {
    final begin = this.begin;
    final end = this.end;

    if (begin == null || end == null) {
      return Rect.lerp(begin, end, t);
    }

    final centerLeft = Tween<Offset>(
      begin: begin.centerLeft,
      end: end.centerLeft.translate(0, 0),
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
