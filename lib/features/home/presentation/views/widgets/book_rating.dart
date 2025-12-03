import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatting extends StatelessWidget {
  const BookRatting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 20),
        const SizedBox(width: 6.3),
        Text('4.5', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text('(2000)', style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
