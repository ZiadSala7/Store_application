import 'package:http/http.dart' as http;
import 'package:store_application/models/api_model.dart';
import 'package:store_application/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'category': category,
        'image': image,
      },
    );
    return ProductModel.fromJson(data);
  }
}
