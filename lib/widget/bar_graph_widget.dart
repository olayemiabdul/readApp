import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuned_read/widget/custom_card.dart';

import '../data/graph_data.dart';
import '../model/graph_model.dart';

class BarGraphWidget extends StatelessWidget {
  const BarGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BarChartDetails barChart = BarChartDetails();
    return GridView.builder(
        itemCount: barChart.barData.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12.0,
          childAspectRatio: 5 / 4,
        ),
        itemBuilder: (context, index) {
          return CustomCard(

            child: Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      barChart.barData[index].label,
                      style: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 12,
                  // ),
                  Expanded(

                    child: BarChart(
                      BarChartData(barGroups: myChartGroups(
                        points: barChart.barData[index].graph,
                        color: barChart.barData[index].color,
                      ),
                      borderData: FlBorderData(border: const Border()),
                      gridData: const FlGridData(show: false),
                        titlesData:  FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta){
                                return Text(barChart.label[value.toInt()],
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),);
                              }
                            ),
                          ),
                          leftTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),

                          ),
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles:const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),

                      ),


                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

List<BarChartGroupData> myChartGroups(
    {required List<BarChartGraph> points, required Color color}) {
  return points
      .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
            BarChartRodData(
              toY: point.y,
              width: 12,
              color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(3.0),
              topLeft: Radius.circular(3.0),),
            ),
          ]))
      .toList();
}
