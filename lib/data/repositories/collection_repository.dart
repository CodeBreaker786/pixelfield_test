import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:pixelfield_test/data/local/app_database.dart';
import 'package:pixelfield_test/data/local/daos/collection_dao/collection_dao.dart';
import 'package:pixelfield_test/main.dart';

class CollectionRepository {
  Future<List<CollectionsModel>> getAllCollections() async {
       AppDatabase appDatabase = AppDatabase();
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
   
      CollectionDao collectionDao = CollectionDao(appDatabase);
      return await collectionDao.getAllCollections();
    } else {
      final String response =
          await rootBundle.loadString('assets/json/collection.json');
      final json = jsonDecode(response);
      final List<CollectionsModel> collection = List<CollectionsModel>.from(
          json.map((x) => CollectionsModel.fromJson(x)));

      // save to database chec
      await appDatabase.batch((batch) {
        batch.insertAllOnConflictUpdate(appDatabase.collections, collection);
      });

      return collection;
    }
  }
}
