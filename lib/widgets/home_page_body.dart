import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/cubit/get_product_cubit/get_product_cubit.dart';
import 'package:store/widgets/product_sliver_grid_builder.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => GetProductCubit(),
        child: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            // CustomAppBar(),
            ProductsSliverGridBuilder(),
          ],
        ),
      ),
    );
  }
}
