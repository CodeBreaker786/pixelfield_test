import 'package:drift/drift.dart';
 
@DataClassName('ItemDetailsModel')
class ItemDetails extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  RealColumn get price => real()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get category => text().withLength(min: 1, max: 50)();
  TextColumn get origin => text().withLength(min: 1, max: 50)();
  TextColumn get distillery => text().withLength(min: 1, max: 100)();
  TextColumn get age => text().withLength(min: 1, max: 50)();
  RealColumn get alcoholVolume => real()();
  RealColumn get bottleSize => real()();  // Size in milliliters (700ml, etc.)
  TextColumn get flavorProfileNose => text().nullable()();
  TextColumn get flavorProfilePalate => text().nullable()();
  TextColumn get flavorProfileFinish => text().nullable()();
  TextColumn get awards => text().nullable()();
  TextColumn get tastingNotesColor => text().nullable()();
  TextColumn get tastingNotesAroma => text().nullable()();
  TextColumn get tastingNotesTaste => text().nullable()();
  TextColumn get tastingNotesFinish => text().nullable()();
  TextColumn get caskType => text().nullable()();
  BoolColumn get barrelStrength => boolean()();
  TextColumn get availability => text().nullable()();
  IntColumn get releaseYear => integer()();
}

