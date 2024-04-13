import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuned_read/widget/side_menu.dart';
import 'package:tuned_read/widget/summary_details.dart';
import 'package:tuned_read/widget/summary_widget.dart';

import '../responsiveness/responsive.dart';
import 'dashboard_widget.dart';
import 'line_chart_widget.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop= Responsive.isDesktop(context);
    return   Scaffold(
      //! to make it nullable
      drawer: !isDesktop?const SizedBox(
        width: 250,
        child: SideMenuWidget(),
      ):null,
      endDrawer: Responsive.isMobile(context)? SizedBox(
        width: MediaQuery.of(context).size.width*0.8,
        child: const SummaryPageWidget(),
      ):null,
      body: SafeArea(
        child: Row(
          children: [
            if(isDesktop)
            const Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                )),
            const Expanded(
                flex: 7,
                child: SizedBox(
                  child: DashBoardPage(),
                )
            ),
            if(isDesktop)
            const Expanded(
              flex: 3,
              child:SummaryPageWidget()
            ),
          ],
        ),
      ),
    );
  }
}