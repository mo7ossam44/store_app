import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/widgets/sliver_grid_builder.dart';
import 'package:store/cubit/get_product_cubit/get_product_cubit.dart';
import 'package:store/cubit/get_product_cubit/get_product_state.dart';

class ProductsSliverGridBuilder extends StatefulWidget {
  const ProductsSliverGridBuilder({super.key});

  @override
  State<ProductsSliverGridBuilder> createState() =>
      _ProductsSliverGridBuilderState();
}

class _ProductsSliverGridBuilderState extends State<ProductsSliverGridBuilder> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetProductCubit>(context).getAllProductsCubit();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<GetProductCubit, GetProductState>(
        builder: (context, state) {
          if (state is ProductSucess) {
            final listOfProduct =
                BlocProvider.of<GetProductCubit>(context).listProductCuibit ??
                [];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: GridViewBuilder(productModel: listOfProduct),
            );
          } else if (state is ProductFaliure) {
            return Center(child: Text("Error: ${state.errMessage}"));
          } else if (state is ProductLoading) {
            return Center(
              child: CircularProgressIndicator(color: Colors.black),
            );
          } else {
            return Text('''We don't have any products yet''');
          }
        },
      ),
    );
  }
}
