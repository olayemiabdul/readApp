import 'dart:ui';

import 'graph_model.dart';

class BarGraphProperty{
  final String label;
  final Color color;
  final List<BarChartGraph>graph;
  BarGraphProperty({required this.color, required this.graph, required this.label});
}