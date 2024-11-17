import 'package:flutter/material.dart';
import 'package:bakery_mobile/widgets/left_drawer.dart';
import 'package:bakery_mobile/widgets/product_card.dart';

class MyHomePage extends StatelessWidget {
  final String npm = '2306152102';
  final String name = 'Janssen Benedict';
  final String className = 'PBP D';
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.cake, const Color.fromARGB(255, 62, 155, 65)),
    ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 19, 112, 188)),
    ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 147, 31, 103)),
  ];
    
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bakery Mobile',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 247, 211),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 247, 211)),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            const SizedBox(height: 16.0),

            Center(
              child: Column(

                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Welcome to Janssen's Mobile Bakery",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,

                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 
class InfoCard extends StatelessWidget {

  final String title;
  final String content;
  
  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}