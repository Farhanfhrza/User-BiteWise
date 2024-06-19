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
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Section(title: 'Sarapan', items: [
            MenuItem(
              color: MenuItem.menuItemColor,
              title: 'Bubur Ayam dengan Sayur',
              description: 'Lezat, hangat, bergizi, mengenyangkan.',
            ),
            MenuItem(
              color: MenuItem.menuItemColor,
              title: 'Nasi Kuning Telur Sayur',
              description: 'Nasi kuning dengan telur dan sayur.',
              addToCart: true,
            ),
          ]),
          Section(title: 'Makan Siang', items: [
            MenuItem(
              color: MenuItem.menuItemColor,
              title: 'Nasi Campur Tradisional',
              description: 'Hidangan khas Indonesia yang lezat.',
            ),
            MenuItem(
              color: MenuItem.menuItemColor,
              title: 'Nasi Merah Tumis Sayur dan Tahu',
              description: 'Nasi merah, sayuran, tahu, serat.',
            ),
          ]),
          Section(title: 'Makan Malam', items: [
            MenuItem(
              color: MenuItem.menuItemColor,
              title: 'Ayam Serundeng',
              description: 'Hidangan khas Indonesia yang lezat.',
            ),
            MenuItem(
              color: MenuItem.menuItemColor,
              title: 'Salad Ayam Panggang',
              description: 'Salad ayam panggang, sayuran hijau.',
              addToCart: true,
            ),
          ]),
          Section(title: 'Camilan', items: [
            MenuItem(
              color: MenuItem.menuItemColor,
              title: 'Salad Ayam Panggang',
              description: 'Salad ayam panggang, sayuran hijau.',
            ),
            MenuItem(
              color: MenuItem.menuItemColor,
              title: 'Salad Ayam Panggang',
              description: 'Salad ayam panggang, sayuran hijau.',
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
  final List<Widget> items;

  Section({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: items,
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final Color color;
  final String title;
  final String description;
  final bool addToCart;

  MenuItem({
    required this.color,
    required this.title,
    required this.description,
    this.addToCart = false,
  });

  static const Color menuItemColor = Color(0xFFC3C3C3);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        radius: 20,
      ),
      title: Text(title),
      subtitle: Text(description),
      trailing: addToCart ? Icon(Icons.add_shopping_cart) : null,
    );
  }
}
