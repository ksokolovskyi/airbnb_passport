import 'package:airbnb_passport/animation/animation.dart';
import 'package:airbnb_passport/models/models.dart';
import 'package:airbnb_passport/theme/theme.dart';
import 'package:airbnb_passport/utils/utils.dart';
import 'package:airbnb_passport/widgets/widgets.dart' hide BoxDecoration;
import 'package:flutter/material.dart';

class PassportSpread extends StatelessWidget {
  const PassportSpread({
    required this.host,
    super.key,
  });

  final Host host;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final stats = host.stats;

    return RepaintBoundary(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 245),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final size = constraints.biggest;

            final open = Container(
              decoration: BoxDecoration(
                color: DemoColors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            foregroundImage: AssetImage(host.avatarPath),
                            maxRadius: 40,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            host.name,
                            style: textTheme.headlineLarge,
                          ),
                          Text(
                            host.isSuperhost ? 'Superhost' : 'Host',
                            style: textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ),
                    if (stats != null)
                      SizedBox(
                        width: size.width / 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${stats.reviewsCount}',
                              style: textTheme.headlineMedium,
                            ),
                            Text(
                              'Reviews',
                              style: textTheme.labelSmall,
                            ),
                            const SizedBox(height: 4),
                            const Divider(),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Text(
                                  DemoFormatters.ratingFormatter.format(
                                    host.rating,
                                  ),
                                  style: textTheme.headlineMedium,
                                ),
                                const SizedBox(width: 2),
                                const StarIcon(
                                  size: Size.square(14),
                                ),
                              ],
                            ),
                            Text(
                              'Rating',
                              style: textTheme.labelSmall,
                            ),
                            const SizedBox(height: 4),
                            const Divider(),
                            const SizedBox(height: 4),
                            Text(
                              '${stats.yearsHosting}',
                              style: textTheme.headlineMedium,
                            ),
                            Text(
                              'Years hosting',
                              style: textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            );

            final right = SizedBox(
              width: size.width / 2,
              height: size.height,
              child: OverflowBox(
                minWidth: size.width / 2,
                maxWidth: size.width,
                alignment: Alignment.centerRight,
                child: ClipRect(
                  child: Align(
                    widthFactor: 0.5,
                    alignment: Alignment.centerRight,
                    child: open,
                  ),
                ),
              ),
            );

            final left = SizedBox(
              width: size.width / 2,
              height: size.height,
              child: OverflowBox(
                minWidth: size.width / 2,
                maxWidth: size.width,
                alignment: Alignment.centerLeft,
                child: ClipRect(
                  child: Align(
                    widthFactor: 0.5,
                    alignment: Alignment.centerLeft,
                    child: open,
                  ),
                ),
              ),
            );

            return Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Hero(
                    tag: 'back_page_${host.id}',
                    child: right,
                    createRectTween: (begin, end) {
                      return BackPageRectTween(
                        begin: begin,
                        end: end,
                      );
                    },
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Hero(
                    tag: 'front_page_${host.id}',
                    child: left,
                    createRectTween: (begin, end) {
                      return FrontPageRectTween(
                        begin: begin,
                        end: end,
                        flightDirection: HeroFlightDirection.push,
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
