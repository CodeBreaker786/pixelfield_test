import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:pixelfield_test/data/local/app_database.dart';
import 'package:pixelfield_test/data/local/daos/item_detail_dao.dart';
import 'package:pixelfield_test/main.dart';

class ItemDetailRepository {
  Future<ItemDetailsModel> getItemDetail(int id) async {
    final AppDatabase appDatabase = AppDatabase();
    List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    ItemDetailDao itemDetailDao = ItemDetailDao(appDatabase);
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return await itemDetailDao.getItemDetail(id);
    } else {
      final String response =
          await rootBundle.loadString('assets/json/item_details.json');
      final json = jsonDecode(response);
      List<ItemDetailsModel> itemDetails = List<ItemDetailsModel>.from(
          json.map((x) => ItemDetailsModel.fromJson(x)));

      final ItemDetailsModel itemDetail =
          itemDetails.firstWhere((element) => element.id == id);
      appDatabase.batch((batch) {
        batch.insertAllOnConflictUpdate(appDatabase.itemDetails, itemDetails);
      });
      return itemDetail;
    }
  }
}
