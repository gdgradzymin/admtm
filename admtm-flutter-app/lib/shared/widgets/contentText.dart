import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {
  final String value;

  const ContentText({required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Text(
          value,
          textAlign: TextAlign.justify,
          style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.65)),
        ).tr()
      ],
    );
  }
}
