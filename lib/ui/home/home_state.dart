part of 'home_cubit.dart';

class HomeState extends Equatable {
  final List<ProductEntity> listProduct;
  final List<ProductEntity>? listHotProduct;

  const HomeState({
    this.listProduct = const [],
    this.listHotProduct = const [],
  });

  @override
  List<Object?> get props => [
        listProduct,
        listHotProduct,
      ];

  HomeState copyWith(
    final List<ProductEntity>? listProduct,
    final List<ProductEntity>? listHotProduct,
  ) {
    return HomeState(
      listProduct: listProduct ?? this.listProduct,
      listHotProduct: listHotProduct ?? this.listHotProduct,
    );
  }
}
