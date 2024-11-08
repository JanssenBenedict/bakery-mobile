import 'package:flutter/material.dart';
import 'package:bakery_mobile/screens/menu.dart';
import 'package:bakery_mobile/screens/product_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Bakery Mobile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 247, 211),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Get All Your Treats Right Here!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 247, 211),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Tambah Item'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const ProductFormPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}