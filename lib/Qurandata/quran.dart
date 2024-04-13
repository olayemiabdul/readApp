import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'ayah_page.dart';
class QuranPage extends StatefulWidget {
  @override
  _QuranPageState createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  List<dynamic> _quranData = [];

  @override
  void initState() {
    super.initState();
    _fetchQuranData();
  }

  Future<void> _fetchQuranData() async {
    final response = await http.get(Uri.parse('https://api.alquran.cloud/v1/quran/en.ahmedali'));
    if (response.statusCode == 200) {
      setState(() {
        _quranData = json.decode(response.body)['data']['surahs'];
      });
    } else {
      throw Exception('Failed to load Quran data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quran'),
      ),
      body: _quranData.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: _quranData.length,
        itemBuilder: (context, index) {
          final surah = _quranData[index];
          return ListTile(
            title: Text(
              surah['englishName'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(surah['name']),
            trailing: Text('Ayahs: ${surah['numberOfAyahs']}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AyahPage(ayahs: surah['ayahs'])),
              );
            },
          );
        },
      ),
    );
  }
}
