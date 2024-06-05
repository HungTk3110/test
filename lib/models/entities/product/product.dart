import 'package:isar/isar.dart';

part 'product.g.dart';
@collection
class ProductEntity {
  Id id = Isar.autoIncrement;
  double? numberOfProducts;
  int? price;
  String? nameProduct;

  ProductEntity({
    this.numberOfProducts,
    this.price,
    this.nameProduct,
  });

  ProductEntity.fromDbMap(dynamic obj) {
    id = obj['_id'];
    numberOfProducts = obj['numberOfProducts'];
    price = obj['price'];
    nameProduct = obj['nameProduct'];
  }

  Map<String, dynamic> toDbMap() {
    return <String, dynamic>{
      '_id': id,
      'numberOfProducts': numberOfProducts,
      'price': price,
      'nameProduct': nameProduct,
    };
  }
}
