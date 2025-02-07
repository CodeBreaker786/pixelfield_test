import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pixelfield_test/data/local/app_database.dart';
import 'package:pixelfield_test/data/repositories/collection_repository.dart';
import 'package:pixelfield_test/data/repositories/item_detail_repository.dart';
part 'collection_event.dart';
part 'collection_state.dart';

class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  CollectionBloc() : super(CollectionInitial()) {
    on<ReloadCollection>((event, emit) => _reloadCollection(emit));
    on<LoadItemDetails>((event, emit) => _loadItemDetails(event, emit));
  }

  _reloadCollection(Emitter<CollectionState> emit) async {
    try {
      emit(CollectionLoading());
      await Future.delayed(const Duration(seconds: 2));
      CollectionRepository collectionRepository = CollectionRepository();
      final List<CollectionsModel> collections =
          await collectionRepository.getAllCollections();
      emit(CollectionLoaded(collections));
    } catch (e) {
      emit(CollectionError(e.toString()));
    }
  }

  _loadItemDetails(LoadItemDetails event, Emitter<CollectionState> emit) async {
    try {
      emit(LoadItemDetailInProgress());
      await Future.delayed(const Duration(seconds: 2));
      ItemDetailRepository collectionRepository = ItemDetailRepository();
      final ItemDetailsModel collectionDetails =
          await collectionRepository.getItemDetail(event.collectionId);
      emit(LoadItemDetailSuccess(collectionDetails));
    } catch (e) {
      emit(LoadItemDetailError(e.toString()));
    }
  }
}
