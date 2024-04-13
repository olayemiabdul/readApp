
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tuned_read/constant.dart';
import 'package:tuned_read/data/side_menu_data.dart';

import '../data/reading_activity_data.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  SideMenuData menu = SideMenuData();
  ReadingActivity reading = ReadingActivity();
  int selectedMenuIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: const Color(0xFF171821),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 20),
        child: ListView.builder(
            itemCount: menu.menuList.length,
            itemBuilder: (context, index) => buildMenuEntry(menu, index)),
      ),
    );
  }

  buildMenuEntry(SideMenuData menu, int index) {
    final isSelectedMenu=selectedMenuIndex==index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration:  BoxDecoration(

        borderRadius: const BorderRadius.all(Radius.circular(6),
        ),
        color: isSelectedMenu?selectionColor:Colors.transparent,

      ),
      child: InkWell(
        onTap: (){
          setState(() {
            selectedMenuIndex=index;
          });
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 10),
              child: Icon(
                menu.menuList[index].icon,
                color: isSelectedMenu?Colors.black:Colors.grey
              ),
            ),
            Text(
              menu.menuList[index].text,
              style:  TextStyle(
                  color: isSelectedMenu?Colors.black:Colors.grey, fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
