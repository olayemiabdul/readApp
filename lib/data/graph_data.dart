import 'dart:ui';

import '../model/barchart_graph_propert.dart';
import '../model/graph_model.dart';

class BarChartDetails{
  final barData = [
    BarGraphProperty(
      color: const Color(0xFFFEB95A),
      graph: [
        BarChartGraph( 0,  8),
        BarChartGraph( 1, 10),
        BarChartGraph( 2,  7),
        BarChartGraph( 3,  4),
        BarChartGraph( 4, 4),
        BarChartGraph( 5, 6),
      ],
      label: 'Activity level',
    ),
    BarGraphProperty(
      color: const Color(0xFFF2C8ED),
      graph: [
        BarChartGraph( 0,  8),
        BarChartGraph( 1, 10),
        BarChartGraph( 2,  9),
        BarChartGraph( 3,  6),
        BarChartGraph( 4, 6),
        BarChartGraph( 5, 7),
      ],
      label: 'Understanding',
    ),
    BarGraphProperty(
      color: const Color(0xFF20AEF3),
      graph: [
        BarChartGraph( 0,  7),
        BarChartGraph( 1, 10),
        BarChartGraph( 2,  7),
        BarChartGraph( 3,  4),
        BarChartGraph( 4, 4),
        BarChartGraph( 5, 10),
      ],
      label: 'Experience gained',
    ),

  ];
  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}
