import 'package:flutter/material.dart';
import 'package:tuned_read/model/menu_model.dart';
import 'package:tuned_read/widget/side_menu.dart';

class SideMenuData{
  final menuList=<MenuModel>[
    MenuModel(Icons.home, 'Dashboard'),
    MenuModel(Icons.person, 'profile'),
    MenuModel(Icons.read_more, 'Read'),
    MenuModel(Icons.settings, 'Settings'),
    MenuModel(Icons.history_edu, 'History'),
    MenuModel(Icons.logout, 'Logout'),


  ];
}