import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class GetAllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );
    List<ProductModel> prodctModelList = [];
    for (int i = 0; i < data.length; i++) {
      prodctModelList.add(ProductModel.fromJson(data[i]));
    }
    return prodctModelList;
  }
}
