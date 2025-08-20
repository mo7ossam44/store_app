import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class GetCategoryName {
  Future<List<ProductModel>> getAllProducts({
    required String categoryName,
  }) async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );
    List<ProductModel> prodctModelList = [];
    for (var product in data) {
      prodctModelList.add(product);
    }
    return prodctModelList;
  }
}
