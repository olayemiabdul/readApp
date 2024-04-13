import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuned_read/constant.dart';

import 'package:tuned_read/Qurandata/uthmani.dart';
import 'package:tuned_read/widget/home_page.dart';

import 'Qurandata/quran.dart';

void main() => runApp(const ReadApp());

class ReadApp extends StatelessWidget {
  const ReadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The ReadApp Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         scaffoldBackgroundColor: backGroundColor,
        brightness: Brightness.dark,
      ),
      home: NewHomePage(),
      //QuranPage(),
    );
  }
}


