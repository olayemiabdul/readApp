import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AyahPage extends StatelessWidget {
  final List<dynamic> ayahs;

  AyahPage({required this.ayahs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayahs'),
      ),
      body: ListView.builder(
        itemCount: ayahs.length,
        itemBuilder: (context, index) {
          final ayah = ayahs[index];
          return ListTile(
            title: Text(
              ayah['text'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Ayah Number: ${ayah['number']}'),
          );
        },
      ),
    );
  }
}