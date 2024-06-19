// Commit 1: import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Commit 2: class MyApp extends StatelessWidget {
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

// Commit 3: class MakananAnakScreen extends StatelessWidget {
class MakananAnakScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Makanan untuk Anak Sehat!'),
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Commit 4: Section "Sarapan"
          Section(title: "Sarapan", items: [
            MenuItem(
              color: Color(0xFFC3C3C3),
              title: "Bubur Ayam dengan Sayur",
              description: "Lezat, hangat, bergizi, mengenyangkan.",
            ),
            MenuItem(
              color: Color(0xFFC3C3C3),
              title: "Nasi Kuning Telur Sayur",
              description: "Nasi kuning dengan telur dan sayur.",
              addToCart: true,
            ),
          ]),
        ],
      ),
    );
  }
}
class Section extends StatelessWidget {
  final String title;
  final List<MenuItem> items;

  Section({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) {
            return MenuCard(item: items[index]);
          },
        ),
      ],
    );
  }
}