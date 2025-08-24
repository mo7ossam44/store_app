import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/cubit/get_product_cubit/get_product_cubit.dart';
import 'package:store/cubit/get_product_cubit/get_product_state.dart';
import 'package:store/widgets/product_cart.dart';

class SliverGridBuilder extends StatefulWidget {
  const SliverGridBuilder({super.key});

  @override
  State<SliverGridBuilder> createState() => _SliverGridBuilderState();
}

class _SliverGridBuilderState extends State<SliverGridBuilder> {
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
            return GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ProductCard(productModel: listOfProduct[index]);
              },
              itemCount: listOfProduct.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                mainAxisSpacing: 40,
                crossAxisSpacing: 10,
              ),
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




// FutureBuilder<List<ProductModel>>(
//         future: GetAllProductService().getAllProducts(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(color: Colors.black),
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           } else if (snapshot.hasData) {
//             final listOfProduct = snapshot.data!;
//             return GridView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 return ProductCard(productModel: listOfProduct[index]);
//               },
//               itemCount: listOfProduct.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 1.2,
//                 mainAxisSpacing: 40,
//                 crossAxisSpacing: 10,
//               ),
//             );
//           } else {
//             return Center(child: Text("No Data Found"));
//           }
//         },
//       ),