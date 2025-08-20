import 'package:flutter/material.dart';
import 'package:store/widgets/custom_app_bar.dart';
import 'package:store/widgets/product_sliver_grid_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [CustomAppBar(), ProductsSliverGridBuilder()],
        ),
      ),
    );
  }
}
