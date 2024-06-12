import 'package:flutter/material.dart';
import 'package:store_application/models/product_model.dart';
import 'package:store_application/services/get_all_products.dart';
import 'package:store_application/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'New Trends',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_sharp,
                size: 25,
              ))
        ],
      ),
      body: FutureBuilder<List<ProductModel>>(
        future: GetAllProducts().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ProductModel> products = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: GridView.builder(
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.1,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return CustomCard(
                      product: products[index],
                    );
                  }),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
