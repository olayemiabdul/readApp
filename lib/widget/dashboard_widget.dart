import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuned_read/responsiveness/responsive.dart';
import 'package:tuned_read/widget/reading_details_card.dart';
import 'package:tuned_read/widget/search_header_widget.dart';
import 'package:tuned_read/widget/summary_widget.dart';

import 'bar_graph_widget.dart';
import 'line_chart_widget.dart';

class DashBoardPage extends StatelessWidget {


  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: ListView(


          children:  [
            //const SizedBox(height: 5,),
            const SearchHeaderWidget(),
             const SizedBox(height: 5,),
            const ReadingDetailPage(),
            const SizedBox(height: 5,),
            const LineChartWidget(),
            const SizedBox(height: 5,),
            const BarGraphWidget(),
            const SizedBox(height: 2,),
            if(Responsive.isTablet(context)) const SummaryPageWidget()

          ],
        ),
    );
  }
}
