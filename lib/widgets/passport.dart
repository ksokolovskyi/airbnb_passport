import 'dart:math' as math;

import 'package:airbnb_passport/animation/animation.dart';
import 'package:airbnb_passport/models/models.dart';
import 'package:airbnb_passport/theme/theme.dart';
import 'package:airbnb_passport/widgets/widgets.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    hide BoxDecoration;

class PassportController extends ValueNotifier<bool> {
  PassportController() : super(false);

  bool get isOpen => value;

  void open() {
    value = true;
  }

  void close() {
    value = false;
  }
}

class Passport extends StatelessWidget {
  const Passport({
    required this.host,
    required this.controller,
    super.key,
  });

  final Host host;

  final PassportController controller;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: SizedBox(
        height: 72,
        child: AspectRatio(
          aspectRatio: 0.888,
          child: ValueListenableBuilder(
            valueListenable: controller,
            builder: (context, isOpen, _) {
              return Stack(
                children: [
                  Hero(
                    tag: 'back_page_${host.id}',
                    createRectTween: (begin, end) {
                      return BackPageRectTween(
                        begin: begin,
                        end: end,
                      );
                    },
                    flightShuttleBuilder: _backPageFlightShuttleBuilder,
                    child: const _BackPage(),
                  ),
                  Hero(
                    tag: 'front_page_${host.id}',
                    createRectTween: (begin, end) {
                      return FrontPageRectTween(
                        begin: begin,
                        end: end,
                        flightDirection: HeroFlightDirection.pop,
                      );
                    },
                    flightShuttleBuilder: (
                      flightContext,
                      animation,
                      flightDirection,
                      fromHeroContext,
                      toHeroContext,
                    ) {
                      return _frontPageFlightShuttleBuilder(
                        flightContext,
                        animation,
                        flightDirection,
                        fromHeroContext,
                        toHeroContext,
                        isOpen ? 0.17 : 0,
                      );
                    },
                    child: _FrontPage(avatarPath: host.avatarPath)
                        .animate(target: isOpen ? 1 : 0)
                        .flipH(
                          delay: Duration.zero,
                          begin: 0,
                          end: 0.17,
                          perspective: 0.9,
                          alignment: Alignment.centerLeft,
                          curve: isOpen
                              ? const ElasticOutCurve(0.6)
                              : Curves.easeIn,
                          duration: isOpen
                              ? const Duration(milliseconds: 800)
                              : const Duration(milliseconds: 300),
                        ),
                  ),
                ],
              ).animate(target: isOpen ? 1 : 0).moveY(
                    delay: Duration.zero,
                    begin: 0,
                    end: -8,
                    curve: isOpen ? Curves.easeOut : Curves.easeIn,
                    duration: const Duration(milliseconds: 300),
                  );
            },
          ),
        ),
      ),
    );
  }

  Widget _frontPageFlightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
    double startFrom,
  ) {
    final didPush = flightDirection == HeroFlightDirection.push;

    final fromWidget = fromHeroContext.widget;
    final toWidget = toHeroContext.widget;

    final fromBox = fromHeroContext.findRenderObject()! as RenderBox;
    final toBox = toHeroContext.findRenderObject()! as RenderBox;

    final fromSize = fromBox.size;
    final toSize = toBox.size;

    final scaleX = math.min(fromSize.width, toSize.width) /
        math.max(fromSize.width, toSize.width);
    final scaleY = math.min(fromSize.height, toSize.height) /
        math.max(fromSize.height, toSize.height);

    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        if (animation.value == 1) {
          return toWidget;
        }

        final from = didPush
            ? _FrontPage(avatarPath: host.avatarPath)
            : OverflowBox(
                maxWidth: fromSize.width * 2,
                maxHeight: fromSize.height * 2,
                child: Center(
                  child: Transform.scale(
                    scaleX: scaleX + ((1 - scaleX) * animation.value),
                    scaleY: scaleY + ((1 - scaleY) * animation.value),
                    child: Transform.flip(
                      flipX: true,
                      child: fromWidget,
                    ),
                  ),
                ),
              );

        final to = didPush
            ? OverflowBox(
                maxWidth: toSize.width * 2,
                maxHeight: toSize.height * 2,
                child: Center(
                  child: Transform.scale(
                    scaleX: scaleX + ((1 - scaleX) * animation.value),
                    scaleY: scaleY + ((1 - scaleY) * animation.value),
                    child: Transform.flip(
                      flipX: true,
                      child: toWidget,
                    ),
                  ),
                ),
              )
            : _FrontPage(avatarPath: host.avatarPath);

        final angle = didPush
            ? math.pi * (startFrom + (1 - startFrom) * animation.value)
            : math.pi * animation.value;

        final isFirstHalf =
            didPush ? angle <= math.pi / 2 : angle >= math.pi / 2;

        final child = isFirstHalf ? from : to;

        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.002)
            ..rotateY(angle),
          alignment: Alignment.centerLeft,
          child: child,
        );
      },
    );
  }

  Widget _backPageFlightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    final didPush = flightDirection == HeroFlightDirection.push;

    final fromWidget = fromHeroContext.widget;
    final toWidget = toHeroContext.widget;

    final fromBox = fromHeroContext.findRenderObject()! as RenderBox;
    final toBox = toHeroContext.findRenderObject()! as RenderBox;

    final fromSize = fromBox.size;
    final toSize = toBox.size;

    final scaleX = math.min(fromSize.width, toSize.width) /
        math.max(fromSize.width, toSize.width);
    final scaleY = math.min(fromSize.height, toSize.height) /
        math.max(fromSize.height, toSize.height);

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        if (didPush) {
          final value = animation.value;

          return Stack(
            children: [
              if (value <= 0.15) fromWidget,
              Opacity(
                opacity: value <= 0.15 ? value / 0.15 : 1,
                child: OverflowBox(
                  maxWidth: toSize.width * 2,
                  maxHeight: toSize.height * 2,
                  child: Center(
                    child: Transform.scale(
                      scaleX: scaleX + ((1 - scaleX) * animation.value),
                      scaleY: scaleY + ((1 - scaleY) * animation.value),
                      child: toWidget,
                    ),
                  ),
                ),
              ),
            ],
          );
        }

        return animation.value < 0.1
            ? toWidget
            : OverflowBox(
                maxWidth: fromSize.width * 2,
                maxHeight: fromSize.height * 2,
                child: Center(
                  child: Transform.scale(
                    scaleX: scaleX + ((1 - scaleX) * animation.value),
                    scaleY: scaleY + ((1 - scaleY) * animation.value),
                    child: fromWidget,
                  ),
                ),
              );
      },
    );
  }
}

class _FrontPage extends StatelessWidget {
  const _FrontPage({
    required this.avatarPath,
  });

  final String avatarPath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: DemoColors.card,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(2),
              bottomLeft: Radius.circular(2),
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: DemoColors.black.withOpacity(0.1),
                offset: const Offset(0, 6),
                blurRadius: 7,
              ),
              BoxShadow(
                color: DemoColors.black.withOpacity(0.15),
                offset: const Offset(0, 2),
                blurRadius: 3,
              ),
              BoxShadow(
                color: DemoColors.black.withOpacity(0.23),
                offset: const Offset(0, 1),
                blurRadius: 1,
                inset: true,
              ),
              BoxShadow(
                color: DemoColors.black.withOpacity(0.216),
                offset: const Offset(1, 1),
                blurRadius: 1,
                inset: true,
              ),
              const BoxShadow(
                color: DemoColors.white,
                offset: Offset(0, 1),
                blurRadius: 2,
                inset: true,
              ),
              BoxShadow(
                color: DemoColors.white.withOpacity(0.35),
                offset: const Offset(0, -1),
                blurRadius: 0.5,
                inset: true,
              ),
              const BoxShadow(
                color: DemoColors.white,
                offset: Offset(0, 2),
                blurRadius: 1,
                spreadRadius: -0.5,
                inset: true,
              ),
              const BoxShadow(
                color: DemoColors.white,
                offset: Offset(0, 1),
                blurRadius: 1,
                inset: true,
              ),
            ],
          ),
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final size = constraints.biggest;
                final side = size.width * 0.65;

                return Container(
                  height: side,
                  width: side,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(avatarPath),
                      fit: BoxFit.cover,
                    ),
                    color: DemoColors.white,
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.24),
                        offset: Offset(0, -1),
                        blurRadius: 1,
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        offset: Offset(0, 1),
                        blurRadius: 1,
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.51),
                        offset: Offset(0, 1),
                        blurRadius: 1,
                        inset: true,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: 3,
          top: 0,
          bottom: 0,
          child: Container(
            width: 1,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  offset: Offset(1, 0),
                  blurRadius: 0.5,
                ),
                BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 0.004),
                  offset: Offset(-1, 0),
                  blurRadius: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _BackPage extends StatelessWidget {
  const _BackPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: DemoColors.cardGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(2),
          bottomLeft: Radius.circular(2),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
    );
  }
}
