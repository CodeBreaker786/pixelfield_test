import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:pixelfield_test/models/collection_table.dart';
import 'package:pixelfield_test/models/details_table.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
part 'app_database.g.dart';

@DriftDatabase(tables: [Collections, ItemDetails])
class AppDatabase extends _$AppDatabase {
 AppDatabase() : super(_openConnection());

 AppDatabase._internal() : super(_openConnection());

 // create singleton instance
  static final AppDatabase instance = AppDatabase._internal();
  

  @override
  int get schemaVersion => 1;

 
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
