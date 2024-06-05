import 'package:qsoft_test/database/isar_helper.dart';
import 'package:qsoft_test/models/entities/product/product.dart';

abstract class ProductInterface {
  Future<List<ProductEntity>> getAllProduct();

  Future<void> insertProduct({
    required List<ProductEntity> product,
  });
}

class ProductRepo extends ProductInterface {
  IsarHelper isarHelper = IsarHelper.instance;

  @override
  Future<List<ProductEntity>> getAllProduct() async {
    return await isarHelper.getAllProduct();
  }

  @override
  Future<void> insertProduct({
    required List<ProductEntity> product,
  }) async {
    await isarHelper.insertProduct(product: product);
  }
}
