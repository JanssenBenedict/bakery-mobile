import 'package:flutter/material.dart';
import 'package:bakery_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bakery Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.deepOrange,
        ).copyWith(secondary: Colors.deepOrange[400]),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}