import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuned_read/widget/custom_card.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        color: const Color(0xFF2F353E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildDetails('Read', '2100'),
            buildDetails('Open', '20'),
            buildDetails('Done', '350'),
            buildDetails('trust', '100'),
          ],
        ));
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
