import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class UthmaniDetailPage extends StatefulWidget {
  final List<dynamic> ayahs;
  final List<dynamic> ayahstext;

  const UthmaniDetailPage({super.key, required this.ayahs, required this.ayahstext,});

  @override
  State<UthmaniDetailPage> createState() => _UthmaniDetailPageState();
}

class _UthmaniDetailPageState extends State<UthmaniDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: ListView.builder(itemBuilder:(context, index){
          return Text(widget.ayahs[index]['number']);
        }),
      ),
      body: ListView.builder(
        itemCount: widget.ayahs.length,
        itemBuilder: (context, index) {
          final ayah = widget.ayahs[index];
          final translated=widget.ayahstext[index];

          return ListTile(

            title: Text(
              ayah['text'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(translated['text']),
          );
        },
      ),
    );
  }
}