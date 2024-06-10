import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_application/models/product_model.dart';

class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> allProducts = [];
    for (int i = 0; i < data.length; i++) {
      allProducts.add(ProductModel.fromJson(data[i]));
    }
    return allProducts;
  }
}
