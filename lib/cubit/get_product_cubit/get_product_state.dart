abstract class GetProductState {}

class ProductSucess extends GetProductState {}

class ProductFaliure extends GetProductState {
  final String errMessage;

  ProductFaliure(this.errMessage);
}

class ProductLoading extends GetProductState {}
