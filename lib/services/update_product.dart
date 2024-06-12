import 'package:store_application/helper/api_model.dart';
import 'package:store_application/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required num id,
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'id': id,
        'title': title,
        'price': price,
        'description': desc,
        'category': category,
        'image': image,
      },
      token: null,
    );
    return ProductModel.fromJson(data);
  }
}
