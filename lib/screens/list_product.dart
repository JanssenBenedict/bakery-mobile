import 'package:bakery_mobile/screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:bakery_mobile/models/product.dart';
import 'package:bakery_mobile/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Future<List<Product>> fetchProducts(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');
    
    var data = response;
    
    List<Product> listProducts = [];
    for (var d in data) {
      if (d != null) {
        listProducts.add(Product.fromJson(d));
      }
    }
    return listProducts;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Products'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Column(
                children: [
                  Text(
                    ' There are currently no products in this bakery. ',
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 170, 0, 0)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final product = snapshot.data![index].fields;

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetails(
                            name: product.name,
                            price: product.price,
                            description: product.description,
                            category: product.category,
                            quantity: product.quantity,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name: ${product.name}",
                            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(product.price == 0 ? "Price: FREE" : "Price: ${product.price}"),
                          const SizedBox(height: 10),
                          Text("Description: ${product.description}"),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }
        },
      ),
    );
  }
}