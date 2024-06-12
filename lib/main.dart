import 'package:flutter/material.dart';
import 'package:store_application/screens/home_page.dart';
import 'package:store_application/screens/update_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => const UpdateProductPage(),
      },
      theme: ThemeData(
          // useMaterial3: false,
          ),
      // initialRoute: HomePage.id,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
