import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_application/models/product_model.dart';

class GetCategories {
  Future<List<ProductModel>> getAllCategories({required catName}) async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/category/$catName'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> allCategories = [];
      for (int i = 0; i < data.length; i++) {
        allCategories.add(ProductModel.fromJson(data[i]));
      }
      return allCategories;
    } else {
      throw Exception(
          'there is an error with a status code ${response.statusCode}');
    }
  }
}
