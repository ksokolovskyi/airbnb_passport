import 'dart:math' as math;

import 'package:airbnb_passport/models/models.dart';
import 'package:airbnb_passport/theme/theme.dart';
import 'package:airbnb_passport/widgets/widgets.dart' hide BoxDecoration;
import 'package:flutter/material.dart';

class PassportDialog extends StatelessWidget {
  const PassportDialog({
    required this.host,
    super.key,
  });

  final Host host;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ScrollNotificationObserver(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 400,
          maxHeight: math.min(800, size.height * 0.85),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: DemoColors.surface,
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                primary: false,
                leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  focusColor: DemoColors.light,
                  hoverColor: DemoColors.light,
                  splashColor: DemoColors.light,
                  highlightColor: DemoColors.light,
                  splashRadius: 16,
                  icon: const Icon(
                    Icons.close,
                    size: 18,
                    color: DemoColors.dark,
                  ),
                ),
                backgroundColor: DemoColors.surface,
                elevation: 0,
                scrolledUnderElevation: 1,
              ),
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PassportSpread(host: host),
                      const SizedBox(height: 20),
                      _InfoRow(
                        icon: const BalloonIcon(
                          size: Size(17, 24),
                        ),
                        text: host.info.bornIn,
                      ),
                      const SizedBox(height: 15),
                      _InfoRow(
                        icon: const BulbIcon(
                          size: Size(17, 23),
                        ),
                        text: 'Fun fact: ${host.info.funFact}',
                      ),
                      const SizedBox(height: 15),
                      _InfoRow(
                        icon: const StarsIcon(
                          size: Size.square(20),
                        ),
                        text: 'What makes my home unique: '
                            '${host.info.uniqueness}',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.text,
  });

  final Widget icon;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints.loose(
            const Size.square(24),
          ),
          child: Center(
            child: icon,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
