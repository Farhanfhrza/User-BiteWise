import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Makanan untuk Anak Sehat!',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MakananAnakScreen(),
    );
  }
}

class MakananAnakScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Makanan untuk Anak Sehat!'),
        leading: Icon(Icons.arrow_back),
      ),
    );
    }
}