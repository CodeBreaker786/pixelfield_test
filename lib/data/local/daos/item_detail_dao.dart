

import 'package:drift/drift.dart';
import 'package:pixelfield_test/data/local/app_database.dart';
import 'package:pixelfield_test/models/details_table.dart';
part 'item_detail_dao.g.dart';

@DriftAccessor(tables: [ItemDetails])
class ItemDetailDao extends DatabaseAccessor<AppDatabase>
    with _$ItemDetailDaoMixin {
  ItemDetailDao(AppDatabase db) : super(db);

  Future<ItemDetailsModel> getItemDetail(int id) async {
    final query =  select(itemDetails)..where((tbl) => tbl.id.equals(id));
    return  query.getSingle();
  }

}