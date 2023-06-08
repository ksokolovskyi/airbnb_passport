import 'package:airbnb_passport/layout/layout.dart';
import 'package:airbnb_passport/widgets/breakpoint_layout.dart';
import 'package:flutter/material.dart';

class PassportDialogRoute<T> extends PageRoute<T> {
  PassportDialogRoute({required this.builder});

  final WidgetBuilder builder;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 600);

  @override
  bool get maintainState => true;

  @override
  Color get barrierColor => Colors.black38;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return BreakpointLayoutBuilder(
      breakpoint: Breakpoints.extraSmall,
      before: (context, child) {
        final opacity = Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(0.3, 0.5, curve: Curves.easeOut),
          ),
        );

        final translation = Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(0.3, 1, curve: Curves.easeOut),
          ),
        );

        return FractionalTranslation(
          translation: translation.value,
          child: Opacity(
            opacity: opacity.value,
            child: child,
          ),
        );
      },
      after: (context, child) {
        final opacity = Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(0.3, 0.5, curve: Curves.easeOut),
          ),
        );

        final translation = Tween<Offset>(
          begin: const Offset(0, 0.1),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(0.3, 1, curve: Curves.easeOut),
          ),
        );

        return FractionalTranslation(
          translation: translation.value,
          child: Opacity(
            opacity: opacity.value,
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return BreakpointLayoutBuilder(
      breakpoint: Breakpoints.extraSmall,
      before: (context, child) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: child,
        );
      },
      after: (context, child) {
        return Center(
          child: child,
        );
      },
      child: builder(context),
    );
  }
}
