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

  Future<List<ProductEntity>> getAllNote() async {
    final allNote = await isar.productEntitys.where().findAll();
    return allNote;
  }

  Future<ProductEntity?> getNoteById(Id id) async {
    final note = isar.productEntitys.getSync(id);
    return note;
  }

  Future<void> insertNote({
    required String title,
    required String describe,
    required int color,
  }) async {
    final note = ProductEntity(

    );

    await isar.writeTxn(() async {
      isar.productEntitys.put(note);
    });
  }

  Future<void> deleteNoteById(Id id) async {
    await isar.writeTxn(() async {
      isar.productEntitys.delete(id);
    });
  }

  Future<void> updateNote({
    required ProductEntity note,
    required String title,
    required String describe,
    required int color,
  }) async {
    await isar.writeTxn(() async {


      await isar.productEntitys.put(note);
    });
  }

  Future<List<ProductEntity>> searchNotesByTitle(String title) async {
    final searchResult = await isar.productEntitys.filter().nameProductStartsWith(title).findAll();
    return searchResult;
  }
}
