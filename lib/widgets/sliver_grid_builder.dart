
import 'package:flutter/material.dart';
import 'package:store/widgets/product_cart.dart';

class SliverGridBuilder extends StatelessWidget {
  const SliverGridBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: 2,
        crossAxisSpacing: 3,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return ProductCard();
      },
    );
  }
}
