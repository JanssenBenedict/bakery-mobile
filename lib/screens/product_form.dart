import 'dart:convert';
import 'package:bakery_mobile/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
	String _description = "";
	int _amount = 0;
  int _price = 0;
  String _category = "";

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Add New Product Form',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: const Color.fromARGB(255, 255, 247, 211),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  maxLength: 255,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "The product must have a name!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Amount",
                    labelText: "Amount",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _amount = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "The product must have a specified quantity!";
                    }
                    final parsedValue = int.tryParse(value);
                    if (parsedValue == null) {
                      return "The product quantity must be a number!";
                    }
                    if (parsedValue < 0) {
                      return "The product quantity cannot be negative!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Description",
                    labelText: "Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  maxLength: 5000,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "The product description can't be empty!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Price",
                    labelText: "Price",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _price = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "The product must have a specified price!";
                    }
                    final parsedValue = int.tryParse(value);
                    if (parsedValue == null) {
                      return "The product price must be a number!";
                    }
                    if (parsedValue < 0) {
                      return "The product price cannot be negative!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Category",
                    labelText: "Category",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _category = value!;
                    });
                  },
                  maxLength: 255,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "The product must be part of a category!";
                    }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                    ),
                    onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                            final response = await request.postJson(
                                "http://localhost:8000/create-flutter/",
                                jsonEncode(<String, String>{
                                    'name': _name,
                                    'amount': _amount.toString(),
                                    'description': _description,
                                    'price': _price.toString(),
                                    'category': _category,
                                    'quantity': _amount.toString(),
                                }),
                            );
                            if (context.mounted) {
                                if (response['status'] == 'success') {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                    content: Text("New product successfully created!"),
                                    ));
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                        content:
                                            Text("There seems to have been a problem, try again!"),
                                    ));
                                }
                            }
                        }
                    },
                    child: const Text("Save", style: TextStyle(color: Color.fromARGB(255, 255, 247, 211)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}