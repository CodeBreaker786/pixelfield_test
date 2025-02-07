part of 'collection_bloc.dart';

@immutable
sealed class CollectionEvent {
  const CollectionEvent();
}



class ReloadCollection extends CollectionEvent {
  const ReloadCollection();
}


class LoadItemDetails extends CollectionEvent {
  final int collectionId;
  const LoadItemDetails(this.collectionId);
}