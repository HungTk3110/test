part of 'cart_cubit.dart';

class CartState extends Equatable {
  final List<ProductEntity> listProduct;

  const CartState({
    this.listProduct = const [],
  });

  @override
  List<Object?> get props => [
        listProduct,
      ];

  CartState copyWith(
    final List<ProductEntity>? listProduct,
  ) {
    return CartState(
      listProduct: listProduct ?? this.listProduct,
    );
  }
}
