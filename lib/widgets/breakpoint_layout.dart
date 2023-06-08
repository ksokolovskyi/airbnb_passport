import 'package:flutter/widgets.dart';

/// Signature for the individual builders (`before`, `after`).
typedef BreakpointLayoutWidgetBuilder = Widget Function(BuildContext, Widget?);

/// A wrapper around [LayoutBuilder] which exposes builders for
/// various responsive breakpoints.
class BreakpointLayoutBuilder extends StatelessWidget {
  const BreakpointLayoutBuilder({
    required this.before,
    required this.after,
    required this.breakpoint,
    super.key,
    this.child,
  });

  /// [BreakpointLayoutWidgetBuilder] for before layout.
  final BreakpointLayoutWidgetBuilder before;

  /// [BreakpointLayoutWidgetBuilder] for after layout.
  final BreakpointLayoutWidgetBuilder after;

  final double breakpoint;

  /// Optional child widget which will be passed
  /// to builders as a way to share/optimize shared layout.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= breakpoint) {
          return before(context, child);
        }

        return after(context, child);
      },
    );
  }
}
