import 'package:store_application/helper/api_model.dart';
import 'package:store_application/models/product_model.dart';

class GetCategories {
  Future<List<ProductModel>> getAllCategories({required catName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$catName');
    List<ProductModel> allCategories = [];
    for (int i = 0; i < data.length; i++) {
      allCategories.add(ProductModel.fromJson(data[i]));
    }
    return allCategories;
  }
}
