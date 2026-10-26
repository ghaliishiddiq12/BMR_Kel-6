
import 'package:flutter/material.dart';
import 'package:kalkulator_bmr_kel6/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    this.cardIcon,
    required this.caption,
  });

  final FaIconData? cardIcon;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(cardIcon, size: 70),
        const SizedBox(height: 15),
        Text(caption, style: labelTextStyle),
      ],
    );
  }
}
