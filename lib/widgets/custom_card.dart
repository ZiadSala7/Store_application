import 'package:flutter/material.dart';
import 'package:store_application/models/product_model.dart';

class CustomCard extends StatelessWidget {
  final ProductModel product;
  const CustomCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 130,
          width: 200,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Color.fromARGB(160, 158, 158, 158),
                spreadRadius: 0,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: Card(
            elevation: 10,
            clipBehavior: Clip.none,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.title.substring(0, 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'$' '${product.price}'),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.favorite))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 100,
          top: -20,
          child: Image.network(
            product.image,
            height: 90,
            width: 90,
          ),
        ),
      ],
    );
  }
}
