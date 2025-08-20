import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/cubit/get_product_cubit/get_product_state.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/get_all_product_service.dart';

class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit(super.initialState);

  List<ProductModel>? listProductCuibit;

  Future<List<ProductModel>> getAllProductsCubit() async {
    try {
      emit(ProductLoading());
      listProductCuibit = await GetAllProductService().getAllProducts();
      emit(ProductSucess());
    } catch (e) {
      emit(ProductFaliure(e.toString()));
    }
    return listProductCuibit!;
  }
}
