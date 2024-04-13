import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tuned_read/Qurandata/uthamani_text.dart';



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> quranData = [];
  List<dynamic> translationQuranData = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("https://api.alquran.cloud/v1/quran/quran-uthmani"));
    if (response.statusCode == 200) {
      setState(() {
        quranData = json.decode(response.body)["data"]["surahs"];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }
  Future<void> _fetchQuranData() async {
    final response = await http.get(Uri.parse('https://api.alquran.cloud/v1/quran/en.ahmedali'));
    if (response.statusCode == 200) {
      setState(() {
        translationQuranData= json.decode(response.body)['data']['surahs'];
      });
    } else {
      throw Exception('Failed to load Quran data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
    _fetchQuranData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quran Data'),
        ),
        body: quranData.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: quranData.length,

          itemBuilder: (context, index) {
            final uthmanisurah = quranData[index];
            final translationDta=translationQuranData[index];

            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UthmaniDetailPage ( ayahs: uthmanisurah['ayahs'], ayahstext:translationDta ['ayahs'],),
                  ),
                );
              },
              title: Text('Surah ${quranData[index]["number"]}: ${quranData[index]["name"]}'),
              subtitle: Text('Ayahs: ${quranData[index]["ayahs"].length}'),
            );
          },
        ),
      ),
    );
  }
}
