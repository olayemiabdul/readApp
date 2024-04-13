import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuned_read/widget/pie_chart.dart';
import 'package:tuned_read/widget/schedule_widget.dart';
import 'package:tuned_read/widget/summary_details.dart';

import '../constant.dart';

class SummaryPageWidget extends StatelessWidget {
  const SummaryPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(

        color: cardBackgroundColor,
      ),
      child:  Padding(
        padding: const EdgeInsets.all(20.0),
        child:ListView(
          children: const [
            Column(
              children: [
                SizedBox(height: 5,),
                PieChartPage(),
                Text(
                  'Summary',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SummaryDetails(),
                ),
                SizedBox(height: 20,),
                Scheduled()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
