import 'package:flutter/material.dart';
import 'package:store_application/services/get_all_categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ElevatedButton(
            onPressed: () async {
              await GetAllCategories().getAllCategories();
            },
            child: Text('dooooooooooos')),
      ),
    );
  }
}
