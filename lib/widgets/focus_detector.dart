import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

typedef FocusDetectorWidgetBuilder = Widget Function(
  BuildContext context,
  // ignore: avoid_positional_boolean_parameters
  bool isFocused,
);

enum _FocusDetectorType {
  desktop,
  mobile,
}

class FocusDetector extends StatefulWidget {
  const FocusDetector.mobile({
    required super.key,
    required this.builder,
  }) : _type = _FocusDetectorType.mobile;

  const FocusDetector.desktop({
    required this.builder,
    super.key,
  }) : _type = _FocusDetectorType.desktop;

  final FocusDetectorWidgetBuilder builder;

  final _FocusDetectorType _type;

  @override
  State<FocusDetector> createState() => _FocusDetectorState();
}

class _FocusDetectorState extends State<FocusDetector> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    switch (widget._type) {
      case _FocusDetectorType.desktop:
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) {
            setState(() {
              _isFocused = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isFocused = false;
            });
          },
          child: widget.builder(context, _isFocused),
        );

      case _FocusDetectorType.mobile:
        return VisibilityDetector(
          key: widget.key!,
          onVisibilityChanged: (info) {
            final isFocused = info.visibleFraction > 0.7;

            if (isFocused == _isFocused) {
              return;
            }

            if (!context.mounted) {
              return;
            }

            setState(() {
              _isFocused = isFocused;
            });
          },
          child: widget.builder(context, _isFocused),
        );
    }
  }
}
