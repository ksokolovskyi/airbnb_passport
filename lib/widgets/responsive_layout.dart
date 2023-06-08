import 'package:airbnb_passport/layout/layout.dart';
import 'package:flutter/widgets.dart';

/// Signature for the individual builders (`small`, `medium`, `large` etc.).
typedef ResponsiveLayoutWidgetBuilder = Widget Function(BuildContext, Widget?);

/// A wrapper around [LayoutBuilder] which exposes builders for
/// various responsive breakpoints.
class ResponsiveLayoutBuilder extends StatelessWidget {
  const ResponsiveLayoutBuilder({
    required this.extraSmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.extraLarge,
    super.key,
    this.child,
  });

  /// [ResponsiveLayoutWidgetBuilder] for extra small layout.
  final ResponsiveLayoutWidgetBuilder extraSmall;

  /// [ResponsiveLayoutWidgetBuilder] for small layout.
  final ResponsiveLayoutWidgetBuilder small;

  /// [ResponsiveLayoutWidgetBuilder] for medium layout.
  final ResponsiveLayoutWidgetBuilder medium;

  /// [ResponsiveLayoutWidgetBuilder] for large layout.
  final ResponsiveLayoutWidgetBuilder large;

  /// [ResponsiveLayoutWidgetBuilder] for extraLarge layout.
  final ResponsiveLayoutWidgetBuilder extraLarge;

  /// Optional child widget which will be passed
  /// to builders as a way to share/optimize shared layout.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= Breakpoints.extraSmall) {
          return extraSmall(context, child);
        }

        if (constraints.maxWidth <= Breakpoints.small) {
          return small(context, child);
        }

        if (constraints.maxWidth <= Breakpoints.medium) {
          return medium(context, child);
        }

        if (constraints.maxWidth <= Breakpoints.large) {
          return large(context, child);
        }

        return extraLarge(context, child);
      },
    );
  }
}
