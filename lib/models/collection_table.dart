import 'package:drift/drift.dart';

@DataClassName('CollectionsModel')
class Collections extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  TextColumn get code =>  text().withLength(min: 1, max: 100)();
  TextColumn get image_url => text()();
}
