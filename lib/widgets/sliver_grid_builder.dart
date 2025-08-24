import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/widgets/product_cart.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key, required this.productModel});

  final List<ProductModel> productModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ProductCard(productModel: productModel[index]);
      },
      itemCount: productModel.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.2,
        mainAxisSpacing: 40,
        crossAxisSpacing: 10,
      ),
    );
  }
}
