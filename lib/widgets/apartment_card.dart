import 'package:airbnb_passport/models/models.dart';
import 'package:airbnb_passport/routing/routing.dart';
import 'package:airbnb_passport/theme/theme.dart';
import 'package:airbnb_passport/utils/utils.dart';
import 'package:airbnb_passport/widgets/widgets.dart' hide BoxDecoration;
import 'package:flutter/material.dart';

class ApartmentCard extends StatefulWidget {
  const ApartmentCard({
    required this.apartment,
    required this.isFocused,
    super.key,
  });

  final Apartment apartment;

  final bool isFocused;

  @override
  State<ApartmentCard> createState() => _ApartmentCardState();
}

class _ApartmentCardState extends State<ApartmentCard> {
  late final PassportController _controller = PassportController();

  @override
  void initState() {
    super.initState();
    _animateFocus();
  }

  @override
  void didUpdateWidget(covariant ApartmentCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isFocused == widget.isFocused) {
      return;
    }

    _animateFocus();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _animateFocus() {
    if (widget.isFocused) {
      _controller.open();
    } else {
      _controller.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return RepaintBoundary(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.apartment.imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: HeartIcon(
                        size: Size(21, 18),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            PassportDialogRoute<void>(
                              builder: (context) {
                                return PassportDialog(
                                  host: widget.apartment.host,
                                );
                              },
                            ),
                          );
                        },
                        child: Passport(
                          key: ValueKey('passport_${widget.apartment.host.id}'),
                          host: widget.apartment.host,
                          controller: _controller,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.apartment.location,
                  style: textTheme.titleLarge,
                ),
              ),
              Row(
                children: [
                  const StarIcon(
                    size: Size.square(12),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    DemoFormatters.ratingFormatter.format(
                      widget.apartment.host.rating,
                    ),
                    style: textTheme.titleMedium?.copyWith(
                      color: DemoColors.dark,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 4),
          Text(
            'Stay with ${widget.apartment.host.name}',
            style: textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
          Text(
            widget.apartment.dates,
            style: textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text.rich(
            TextSpan(
              text: DemoFormatters.priceFormatter.format(
                widget.apartment.pricePerNight,
              ),
              children: [
                TextSpan(
                  text: ' night',
                  style: textTheme.titleMedium?.copyWith(
                    color: DemoColors.dark,
                  ),
                ),
              ],
            ),
            style: textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
