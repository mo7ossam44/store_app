import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class GetAllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );
    List<ProductModel> prodctModelList = [];
    for (var product in data) {
      prodctModelList.add(product);
    }
    return prodctModelList;
  }
}
