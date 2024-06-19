import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gizi tepat untuk lansia Sehat',
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
        title: Text('Nutrisi Tepat untuk Kinerja Hebat'),
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
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
          Section(title: "Makan Siang", items: [
            MenuItem(
              color: Color(0xFFC3C3C3),
              title: "Nasi Campur Tradisional",
              description: "Hidangan khas Indonesia yang lezat.",
            ),
            MenuItem(
              color: Color(0xFFC3C3C3),
              title: "Nasi Merah Tumis Sayur dan Tahu",
              description: "Nasi merah, sayuran, tahu, serat.",
            ),
          ]),
          Section(title: "Makan Malam", items: [
            MenuItem(
              color: Color(0xFFC3C3C3),
              title: "Ayam Serundeng",
              description: "Hidangan khas Indonesia yang lezat.",
            ),
            MenuItem(
              color: Color(0xFFC3C3C3),
              title: "Salad Ayam Panggang",
              description: "Salad ayam panggang, sayuran hijau.",
              addToCart: true,
            ),
          ]),
          Section(title: "Camilan", items: [
            MenuItem(
              color: Color(0xFFC3C3C3),
              title: "Salad Ayam Panggang",
              description: "Salad ayam panggang, sayuran hijau.",
            ),
            MenuItem(
              color: Color(0xFFC3C3C3),
              title: "Salad Ayam Panggang",
              description: "Salad ayam panggang, sayuran hijau.",
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

class MenuItem {
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
}

class MenuCard extends StatelessWidget {
  final MenuItem item;

  MenuCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: item.color,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              item.title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(item.description),
            if (item.addToCart)
              Spacer(),
            if (item.addToCart)
              Align(
                alignment: Alignment.centerRight,
                child: TextButton.icon(
                  onPressed: () {
                    // Handle Add to Cart
                  },
                  icon: Icon(Icons.add_shopping_cart),
                  label: Text('Add to Chart'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
