import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HeaderH2 extends StatelessWidget {
  const HeaderH2({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 2, top: 48, bottom: 24),
      child: Text(
        tr(text),
        textAlign: TextAlign.start,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(fontWeightDelta: 2),
      ),
    );
  }
}
