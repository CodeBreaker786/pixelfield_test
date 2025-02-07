part of 'collection_bloc.dart';

@immutable
sealed class CollectionState {}

final class CollectionInitial extends CollectionState {}

final class CollectionLoading extends CollectionState {}

final class CollectionLoaded extends CollectionState {
  final List<CollectionsModel> collection;

  CollectionLoaded(this.collection);
}

final class CollectionError extends CollectionState {
  final String message;

  CollectionError(this.message);
}

final class CollectionEmpty extends CollectionState {}

final class LoadItemDetailInProgress extends CollectionState {}

final class LoadItemDetailSuccess extends CollectionState {
  final ItemDetailsModel collectionDetails;

  LoadItemDetailSuccess(this.collectionDetails);
}

final class LoadItemDetailError extends CollectionState {
  final String message;

  LoadItemDetailError(this.message);
}

final class LoadItemDetailEmpty extends CollectionState {}
