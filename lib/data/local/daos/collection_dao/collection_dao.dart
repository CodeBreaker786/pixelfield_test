import 'package:drift/drift.dart';
import 'package:pixelfield_test/data/local/app_database.dart';
import 'package:pixelfield_test/models/collection_table.dart';

part 'collection_dao.g.dart';

@DriftAccessor(tables: [Collections])
class CollectionDao extends DatabaseAccessor<AppDatabase>
    with _$CollectionDaoMixin {
  CollectionDao(AppDatabase db) : super(db);

  Future<List<CollectionsModel>> getAllCollections() =>
      select(collections).get();
}
