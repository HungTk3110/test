import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qsoft_test/models/entities/product/product.dart';

class IsarHelper {
  IsarHelper._privateConstructor();

  static final IsarHelper instance = IsarHelper._privateConstructor();
  late Isar isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [ProductEntitySchema],
      directory: dir.path,
      inspector: true,
    );
  }

  Future<List<ProductEntity>> getAllProduct() async {
    final allNote = await isar.productEntitys.where().findAll();
    return allNote;
  }

  Future<ProductEntity?> getProductById(Id id) async {
    final Product = isar.productEntitys.getSync(id);
    return Product;
  }

  Future<void> insertProduct({
    required List<ProductEntity> product,
  }) async {
    await isar.writeTxn(() async {
      isar.productEntitys.putAll(product);
    });
  }

  Future<void> deleteProductById(Id id) async {
    await isar.writeTxn(() async {
      isar.productEntitys.delete(id);
    });
  }

  Future<void> updateProduct({
    required ProductEntity product,
    required String title,
    required String describe,
    required int color,
  }) async {
    await isar.writeTxn(() async {
      await isar.productEntitys.put(product);
    });
  }

  Future<List<ProductEntity>> searchProductsByTitle(String title) async {
    final searchResult = await isar.productEntitys
        .filter()
        .nameProductStartsWith(title)
        .findAll();
    return searchResult;
  }
}
