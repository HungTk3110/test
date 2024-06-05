import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qsoft_test/common/app_images.dart';
import 'package:qsoft_test/models/entities/product/product.dart';
import 'package:qsoft_test/repositories/product_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ProductRepo productRepo = ProductRepo();

  HomeCubit() : super(const HomeState());

  Future<void> initData() async {
    List<ProductEntity> products = await productRepo.getAllProduct();
    if (products.isEmpty) {
      productRepo.insertProduct(product: [
        ProductEntity(
          imgProduct: AppImages.imgProduct0,
          nameProduct: 'Product0',
          price: 100000,
          numberOfProducts: 1,
        ),
        ProductEntity(
          imgProduct: AppImages.imgProduct1,
          nameProduct: 'Product1',
          price: 200000,
          numberOfProducts: 1,
        ),
        ProductEntity(
          imgProduct: AppImages.imgProduct2,
          nameProduct: 'Product2',
          price: 300000,
          numberOfProducts: 1,
        ),
        ProductEntity(
          imgProduct: AppImages.imgProduct3,
          nameProduct: 'Product3',
          price: 300000,
          numberOfProducts: 1,
        ),
        ProductEntity(
          imgProduct: AppImages.imgProduct4,
          nameProduct: 'Product4',
          price: 400000,
          numberOfProducts: 1,
        ),
        ProductEntity(
          imgProduct: AppImages.imgProduct5,
          nameProduct: 'Product5',
          price: 500000,
          numberOfProducts: 1,
        ),
        ProductEntity(
          imgProduct: AppImages.imgProduct6,
          nameProduct: 'Product6',
          price: 600000,
          numberOfProducts: 1,
        ),
        ProductEntity(
          imgProduct: AppImages.imgProduct7,
          nameProduct: 'Product7',
          price: 700000,
          numberOfProducts: 1,
        ),
        ProductEntity(
          imgProduct: AppImages.imgProduct8,
          nameProduct: 'Product8',
          price: 800000,
          numberOfProducts: 1,
        ),
      ]);
    }
  }
}
