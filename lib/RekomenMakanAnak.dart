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
        title: Text('Makanan untuk Anak Sehat'),
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman rekomendasi makanan untuk anak.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
