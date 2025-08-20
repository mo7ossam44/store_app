import 'package:flutter/material.dart';
import 'package:store/widgets/sliver_grid_builder.dart';

class ProductsSliverGridBuilder extends StatelessWidget {
  const ProductsSliverGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      sliver: SliverGridBuilder(),
    );
  }
}
