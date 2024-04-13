import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuned_read/constant.dart';
import 'package:tuned_read/data/reading_activity_data.dart';

import '../responsiveness/responsive.dart';
import 'custom_card.dart';

class ReadingDetailPage extends StatelessWidget {
  const ReadingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    ReadingActivity reading = ReadingActivity();
    return GridView.builder(
        itemCount: reading.readingActivity.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
            crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
             mainAxisSpacing: 12),
        itemBuilder: (context, index)=> CustomCard(color: backGroundColor,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(reading.readingActivity[index].icon, height: 30,width: 30,),

            Padding(
              padding: const EdgeInsets.only(bottom: 4, top: 15),
              child: Text(reading.readingActivity[index].value, style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),),
            ),
            Text(reading.readingActivity[index].title, style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),),

          ],
        ),));
  }
}
