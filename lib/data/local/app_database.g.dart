// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CollectionsTable extends Collections
    with TableInfo<$CollectionsTable, CollectionsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _image_urlMeta =
      const VerificationMeta('image_url');
  @override
  late final GeneratedColumn<String> image_url = GeneratedColumn<String>(
      'image_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, code, image_url];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'collections';
  @override
  VerificationContext validateIntegrity(Insertable<CollectionsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_image_urlMeta,
          image_url.isAcceptableOrUnknown(data['image_url']!, _image_urlMeta));
    } else if (isInserting) {
      context.missing(_image_urlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      image_url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url'])!,
    );
  }

  @override
  $CollectionsTable createAlias(String alias) {
    return $CollectionsTable(attachedDatabase, alias);
  }
}

class CollectionsModel extends DataClass
    implements Insertable<CollectionsModel> {
  final int id;
  final String name;
  final String code;
  final String image_url;
  const CollectionsModel(
      {required this.id,
      required this.name,
      required this.code,
      required this.image_url});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['code'] = Variable<String>(code);
    map['image_url'] = Variable<String>(image_url);
    return map;
  }

  CollectionsCompanion toCompanion(bool nullToAbsent) {
    return CollectionsCompanion(
      id: Value(id),
      name: Value(name),
      code: Value(code),
      image_url: Value(image_url),
    );
  }

  factory CollectionsModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CollectionsModel(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      code: serializer.fromJson<String>(json['code']),
      image_url: serializer.fromJson<String>(json['image_url']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'code': serializer.toJson<String>(code),
      'image_url': serializer.toJson<String>(image_url),
    };
  }

  CollectionsModel copyWith(
          {int? id, String? name, String? code, String? image_url}) =>
      CollectionsModel(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        image_url: image_url ?? this.image_url,
      );
  CollectionsModel copyWithCompanion(CollectionsCompanion data) {
    return CollectionsModel(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      code: data.code.present ? data.code.value : this.code,
      image_url: data.image_url.present ? data.image_url.value : this.image_url,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CollectionsModel(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('image_url: $image_url')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, code, image_url);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CollectionsModel &&
          other.id == this.id &&
          other.name == this.name &&
          other.code == this.code &&
          other.image_url == this.image_url);
}

class CollectionsCompanion extends UpdateCompanion<CollectionsModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> code;
  final Value<String> image_url;
  const CollectionsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.code = const Value.absent(),
    this.image_url = const Value.absent(),
  });
  CollectionsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String code,
    required String image_url,
  })  : name = Value(name),
        code = Value(code),
        image_url = Value(image_url);
  static Insertable<CollectionsModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? code,
    Expression<String>? image_url,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (code != null) 'code': code,
      if (image_url != null) 'image_url': image_url,
    });
  }

  CollectionsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? code,
      Value<String>? image_url}) {
    return CollectionsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      image_url: image_url ?? this.image_url,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (image_url.present) {
      map['image_url'] = Variable<String>(image_url.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('image_url: $image_url')
          ..write(')'))
        .toString();
  }
}

class $ItemDetailsTable extends ItemDetails
    with TableInfo<$ItemDetailsTable, ItemDetailsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _originMeta = const VerificationMeta('origin');
  @override
  late final GeneratedColumn<String> origin = GeneratedColumn<String>(
      'origin', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _distilleryMeta =
      const VerificationMeta('distillery');
  @override
  late final GeneratedColumn<String> distillery = GeneratedColumn<String>(
      'distillery', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<String> age = GeneratedColumn<String>(
      'age', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _alcoholVolumeMeta =
      const VerificationMeta('alcoholVolume');
  @override
  late final GeneratedColumn<double> alcoholVolume = GeneratedColumn<double>(
      'alcohol_volume', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _bottleSizeMeta =
      const VerificationMeta('bottleSize');
  @override
  late final GeneratedColumn<double> bottleSize = GeneratedColumn<double>(
      'bottle_size', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _flavorProfileNoseMeta =
      const VerificationMeta('flavorProfileNose');
  @override
  late final GeneratedColumn<String> flavorProfileNose =
      GeneratedColumn<String>('flavor_profile_nose', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _flavorProfilePalateMeta =
      const VerificationMeta('flavorProfilePalate');
  @override
  late final GeneratedColumn<String> flavorProfilePalate =
      GeneratedColumn<String>('flavor_profile_palate', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _flavorProfileFinishMeta =
      const VerificationMeta('flavorProfileFinish');
  @override
  late final GeneratedColumn<String> flavorProfileFinish =
      GeneratedColumn<String>('flavor_profile_finish', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _awardsMeta = const VerificationMeta('awards');
  @override
  late final GeneratedColumn<String> awards = GeneratedColumn<String>(
      'awards', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tastingNotesColorMeta =
      const VerificationMeta('tastingNotesColor');
  @override
  late final GeneratedColumn<String> tastingNotesColor =
      GeneratedColumn<String>('tasting_notes_color', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tastingNotesAromaMeta =
      const VerificationMeta('tastingNotesAroma');
  @override
  late final GeneratedColumn<String> tastingNotesAroma =
      GeneratedColumn<String>('tasting_notes_aroma', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tastingNotesTasteMeta =
      const VerificationMeta('tastingNotesTaste');
  @override
  late final GeneratedColumn<String> tastingNotesTaste =
      GeneratedColumn<String>('tasting_notes_taste', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tastingNotesFinishMeta =
      const VerificationMeta('tastingNotesFinish');
  @override
  late final GeneratedColumn<String> tastingNotesFinish =
      GeneratedColumn<String>('tasting_notes_finish', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _caskTypeMeta =
      const VerificationMeta('caskType');
  @override
  late final GeneratedColumn<String> caskType = GeneratedColumn<String>(
      'cask_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _barrelStrengthMeta =
      const VerificationMeta('barrelStrength');
  @override
  late final GeneratedColumn<bool> barrelStrength = GeneratedColumn<bool>(
      'barrel_strength', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("barrel_strength" IN (0, 1))'));
  static const VerificationMeta _availabilityMeta =
      const VerificationMeta('availability');
  @override
  late final GeneratedColumn<String> availability = GeneratedColumn<String>(
      'availability', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _releaseYearMeta =
      const VerificationMeta('releaseYear');
  @override
  late final GeneratedColumn<int> releaseYear = GeneratedColumn<int>(
      'release_year', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        price,
        imageUrl,
        category,
        origin,
        distillery,
        age,
        alcoholVolume,
        bottleSize,
        flavorProfileNose,
        flavorProfilePalate,
        flavorProfileFinish,
        awards,
        tastingNotesColor,
        tastingNotesAroma,
        tastingNotesTaste,
        tastingNotesFinish,
        caskType,
        barrelStrength,
        availability,
        releaseYear
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_details';
  @override
  VerificationContext validateIntegrity(Insertable<ItemDetailsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('origin')) {
      context.handle(_originMeta,
          origin.isAcceptableOrUnknown(data['origin']!, _originMeta));
    } else if (isInserting) {
      context.missing(_originMeta);
    }
    if (data.containsKey('distillery')) {
      context.handle(
          _distilleryMeta,
          distillery.isAcceptableOrUnknown(
              data['distillery']!, _distilleryMeta));
    } else if (isInserting) {
      context.missing(_distilleryMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
          _ageMeta, age.isAcceptableOrUnknown(data['age']!, _ageMeta));
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    if (data.containsKey('alcohol_volume')) {
      context.handle(
          _alcoholVolumeMeta,
          alcoholVolume.isAcceptableOrUnknown(
              data['alcohol_volume']!, _alcoholVolumeMeta));
    } else if (isInserting) {
      context.missing(_alcoholVolumeMeta);
    }
    if (data.containsKey('bottle_size')) {
      context.handle(
          _bottleSizeMeta,
          bottleSize.isAcceptableOrUnknown(
              data['bottle_size']!, _bottleSizeMeta));
    } else if (isInserting) {
      context.missing(_bottleSizeMeta);
    }
    if (data.containsKey('flavor_profile_nose')) {
      context.handle(
          _flavorProfileNoseMeta,
          flavorProfileNose.isAcceptableOrUnknown(
              data['flavor_profile_nose']!, _flavorProfileNoseMeta));
    }
    if (data.containsKey('flavor_profile_palate')) {
      context.handle(
          _flavorProfilePalateMeta,
          flavorProfilePalate.isAcceptableOrUnknown(
              data['flavor_profile_palate']!, _flavorProfilePalateMeta));
    }
    if (data.containsKey('flavor_profile_finish')) {
      context.handle(
          _flavorProfileFinishMeta,
          flavorProfileFinish.isAcceptableOrUnknown(
              data['flavor_profile_finish']!, _flavorProfileFinishMeta));
    }
    if (data.containsKey('awards')) {
      context.handle(_awardsMeta,
          awards.isAcceptableOrUnknown(data['awards']!, _awardsMeta));
    }
    if (data.containsKey('tasting_notes_color')) {
      context.handle(
          _tastingNotesColorMeta,
          tastingNotesColor.isAcceptableOrUnknown(
              data['tasting_notes_color']!, _tastingNotesColorMeta));
    }
    if (data.containsKey('tasting_notes_aroma')) {
      context.handle(
          _tastingNotesAromaMeta,
          tastingNotesAroma.isAcceptableOrUnknown(
              data['tasting_notes_aroma']!, _tastingNotesAromaMeta));
    }
    if (data.containsKey('tasting_notes_taste')) {
      context.handle(
          _tastingNotesTasteMeta,
          tastingNotesTaste.isAcceptableOrUnknown(
              data['tasting_notes_taste']!, _tastingNotesTasteMeta));
    }
    if (data.containsKey('tasting_notes_finish')) {
      context.handle(
          _tastingNotesFinishMeta,
          tastingNotesFinish.isAcceptableOrUnknown(
              data['tasting_notes_finish']!, _tastingNotesFinishMeta));
    }
    if (data.containsKey('cask_type')) {
      context.handle(_caskTypeMeta,
          caskType.isAcceptableOrUnknown(data['cask_type']!, _caskTypeMeta));
    }
    if (data.containsKey('barrel_strength')) {
      context.handle(
          _barrelStrengthMeta,
          barrelStrength.isAcceptableOrUnknown(
              data['barrel_strength']!, _barrelStrengthMeta));
    } else if (isInserting) {
      context.missing(_barrelStrengthMeta);
    }
    if (data.containsKey('availability')) {
      context.handle(
          _availabilityMeta,
          availability.isAcceptableOrUnknown(
              data['availability']!, _availabilityMeta));
    }
    if (data.containsKey('release_year')) {
      context.handle(
          _releaseYearMeta,
          releaseYear.isAcceptableOrUnknown(
              data['release_year']!, _releaseYearMeta));
    } else if (isInserting) {
      context.missing(_releaseYearMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemDetailsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemDetailsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      origin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}origin'])!,
      distillery: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}distillery'])!,
      age: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}age'])!,
      alcoholVolume: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}alcohol_volume'])!,
      bottleSize: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}bottle_size'])!,
      flavorProfileNose: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}flavor_profile_nose']),
      flavorProfilePalate: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}flavor_profile_palate']),
      flavorProfileFinish: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}flavor_profile_finish']),
      awards: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}awards']),
      tastingNotesColor: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}tasting_notes_color']),
      tastingNotesAroma: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}tasting_notes_aroma']),
      tastingNotesTaste: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}tasting_notes_taste']),
      tastingNotesFinish: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}tasting_notes_finish']),
      caskType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cask_type']),
      barrelStrength: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}barrel_strength'])!,
      availability: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}availability']),
      releaseYear: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}release_year'])!,
    );
  }

  @override
  $ItemDetailsTable createAlias(String alias) {
    return $ItemDetailsTable(attachedDatabase, alias);
  }
}

class ItemDetailsModel extends DataClass
    implements Insertable<ItemDetailsModel> {
  final int id;
  final String name;
  final double price;
  final String? imageUrl;
  final String category;
  final String origin;
  final String distillery;
  final String age;
  final double alcoholVolume;
  final double bottleSize;
  final String? flavorProfileNose;
  final String? flavorProfilePalate;
  final String? flavorProfileFinish;
  final String? awards;
  final String? tastingNotesColor;
  final String? tastingNotesAroma;
  final String? tastingNotesTaste;
  final String? tastingNotesFinish;
  final String? caskType;
  final bool barrelStrength;
  final String? availability;
  final int releaseYear;
  const ItemDetailsModel(
      {required this.id,
      required this.name,
      required this.price,
      this.imageUrl,
      required this.category,
      required this.origin,
      required this.distillery,
      required this.age,
      required this.alcoholVolume,
      required this.bottleSize,
      this.flavorProfileNose,
      this.flavorProfilePalate,
      this.flavorProfileFinish,
      this.awards,
      this.tastingNotesColor,
      this.tastingNotesAroma,
      this.tastingNotesTaste,
      this.tastingNotesFinish,
      this.caskType,
      required this.barrelStrength,
      this.availability,
      required this.releaseYear});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['price'] = Variable<double>(price);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    map['category'] = Variable<String>(category);
    map['origin'] = Variable<String>(origin);
    map['distillery'] = Variable<String>(distillery);
    map['age'] = Variable<String>(age);
    map['alcohol_volume'] = Variable<double>(alcoholVolume);
    map['bottle_size'] = Variable<double>(bottleSize);
    if (!nullToAbsent || flavorProfileNose != null) {
      map['flavor_profile_nose'] = Variable<String>(flavorProfileNose);
    }
    if (!nullToAbsent || flavorProfilePalate != null) {
      map['flavor_profile_palate'] = Variable<String>(flavorProfilePalate);
    }
    if (!nullToAbsent || flavorProfileFinish != null) {
      map['flavor_profile_finish'] = Variable<String>(flavorProfileFinish);
    }
    if (!nullToAbsent || awards != null) {
      map['awards'] = Variable<String>(awards);
    }
    if (!nullToAbsent || tastingNotesColor != null) {
      map['tasting_notes_color'] = Variable<String>(tastingNotesColor);
    }
    if (!nullToAbsent || tastingNotesAroma != null) {
      map['tasting_notes_aroma'] = Variable<String>(tastingNotesAroma);
    }
    if (!nullToAbsent || tastingNotesTaste != null) {
      map['tasting_notes_taste'] = Variable<String>(tastingNotesTaste);
    }
    if (!nullToAbsent || tastingNotesFinish != null) {
      map['tasting_notes_finish'] = Variable<String>(tastingNotesFinish);
    }
    if (!nullToAbsent || caskType != null) {
      map['cask_type'] = Variable<String>(caskType);
    }
    map['barrel_strength'] = Variable<bool>(barrelStrength);
    if (!nullToAbsent || availability != null) {
      map['availability'] = Variable<String>(availability);
    }
    map['release_year'] = Variable<int>(releaseYear);
    return map;
  }

  ItemDetailsCompanion toCompanion(bool nullToAbsent) {
    return ItemDetailsCompanion(
      id: Value(id),
      name: Value(name),
      price: Value(price),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      category: Value(category),
      origin: Value(origin),
      distillery: Value(distillery),
      age: Value(age),
      alcoholVolume: Value(alcoholVolume),
      bottleSize: Value(bottleSize),
      flavorProfileNose: flavorProfileNose == null && nullToAbsent
          ? const Value.absent()
          : Value(flavorProfileNose),
      flavorProfilePalate: flavorProfilePalate == null && nullToAbsent
          ? const Value.absent()
          : Value(flavorProfilePalate),
      flavorProfileFinish: flavorProfileFinish == null && nullToAbsent
          ? const Value.absent()
          : Value(flavorProfileFinish),
      awards:
          awards == null && nullToAbsent ? const Value.absent() : Value(awards),
      tastingNotesColor: tastingNotesColor == null && nullToAbsent
          ? const Value.absent()
          : Value(tastingNotesColor),
      tastingNotesAroma: tastingNotesAroma == null && nullToAbsent
          ? const Value.absent()
          : Value(tastingNotesAroma),
      tastingNotesTaste: tastingNotesTaste == null && nullToAbsent
          ? const Value.absent()
          : Value(tastingNotesTaste),
      tastingNotesFinish: tastingNotesFinish == null && nullToAbsent
          ? const Value.absent()
          : Value(tastingNotesFinish),
      caskType: caskType == null && nullToAbsent
          ? const Value.absent()
          : Value(caskType),
      barrelStrength: Value(barrelStrength),
      availability: availability == null && nullToAbsent
          ? const Value.absent()
          : Value(availability),
      releaseYear: Value(releaseYear),
    );
  }

  factory ItemDetailsModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemDetailsModel(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      price: serializer.fromJson<double>(json['price']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      category: serializer.fromJson<String>(json['category']),
      origin: serializer.fromJson<String>(json['origin']),
      distillery: serializer.fromJson<String>(json['distillery']),
      age: serializer.fromJson<String>(json['age']),
      alcoholVolume: serializer.fromJson<double>(json['alcoholVolume']),
      bottleSize: serializer.fromJson<double>(json['bottleSize']),
      flavorProfileNose:
          serializer.fromJson<String?>(json['flavorProfileNose']),
      flavorProfilePalate:
          serializer.fromJson<String?>(json['flavorProfilePalate']),
      flavorProfileFinish:
          serializer.fromJson<String?>(json['flavorProfileFinish']),
      awards: serializer.fromJson<String?>(json['awards']),
      tastingNotesColor:
          serializer.fromJson<String?>(json['tastingNotesColor']),
      tastingNotesAroma:
          serializer.fromJson<String?>(json['tastingNotesAroma']),
      tastingNotesTaste:
          serializer.fromJson<String?>(json['tastingNotesTaste']),
      tastingNotesFinish:
          serializer.fromJson<String?>(json['tastingNotesFinish']),
      caskType: serializer.fromJson<String?>(json['caskType']),
      barrelStrength: serializer.fromJson<bool>(json['barrelStrength']),
      availability: serializer.fromJson<String?>(json['availability']),
      releaseYear: serializer.fromJson<int>(json['releaseYear']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'price': serializer.toJson<double>(price),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'category': serializer.toJson<String>(category),
      'origin': serializer.toJson<String>(origin),
      'distillery': serializer.toJson<String>(distillery),
      'age': serializer.toJson<String>(age),
      'alcoholVolume': serializer.toJson<double>(alcoholVolume),
      'bottleSize': serializer.toJson<double>(bottleSize),
      'flavorProfileNose': serializer.toJson<String?>(flavorProfileNose),
      'flavorProfilePalate': serializer.toJson<String?>(flavorProfilePalate),
      'flavorProfileFinish': serializer.toJson<String?>(flavorProfileFinish),
      'awards': serializer.toJson<String?>(awards),
      'tastingNotesColor': serializer.toJson<String?>(tastingNotesColor),
      'tastingNotesAroma': serializer.toJson<String?>(tastingNotesAroma),
      'tastingNotesTaste': serializer.toJson<String?>(tastingNotesTaste),
      'tastingNotesFinish': serializer.toJson<String?>(tastingNotesFinish),
      'caskType': serializer.toJson<String?>(caskType),
      'barrelStrength': serializer.toJson<bool>(barrelStrength),
      'availability': serializer.toJson<String?>(availability),
      'releaseYear': serializer.toJson<int>(releaseYear),
    };
  }

  ItemDetailsModel copyWith(
          {int? id,
          String? name,
          double? price,
          Value<String?> imageUrl = const Value.absent(),
          String? category,
          String? origin,
          String? distillery,
          String? age,
          double? alcoholVolume,
          double? bottleSize,
          Value<String?> flavorProfileNose = const Value.absent(),
          Value<String?> flavorProfilePalate = const Value.absent(),
          Value<String?> flavorProfileFinish = const Value.absent(),
          Value<String?> awards = const Value.absent(),
          Value<String?> tastingNotesColor = const Value.absent(),
          Value<String?> tastingNotesAroma = const Value.absent(),
          Value<String?> tastingNotesTaste = const Value.absent(),
          Value<String?> tastingNotesFinish = const Value.absent(),
          Value<String?> caskType = const Value.absent(),
          bool? barrelStrength,
          Value<String?> availability = const Value.absent(),
          int? releaseYear}) =>
      ItemDetailsModel(
        id: id ?? this.id,
        name: name ?? this.name,
        price: price ?? this.price,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        category: category ?? this.category,
        origin: origin ?? this.origin,
        distillery: distillery ?? this.distillery,
        age: age ?? this.age,
        alcoholVolume: alcoholVolume ?? this.alcoholVolume,
        bottleSize: bottleSize ?? this.bottleSize,
        flavorProfileNose: flavorProfileNose.present
            ? flavorProfileNose.value
            : this.flavorProfileNose,
        flavorProfilePalate: flavorProfilePalate.present
            ? flavorProfilePalate.value
            : this.flavorProfilePalate,
        flavorProfileFinish: flavorProfileFinish.present
            ? flavorProfileFinish.value
            : this.flavorProfileFinish,
        awards: awards.present ? awards.value : this.awards,
        tastingNotesColor: tastingNotesColor.present
            ? tastingNotesColor.value
            : this.tastingNotesColor,
        tastingNotesAroma: tastingNotesAroma.present
            ? tastingNotesAroma.value
            : this.tastingNotesAroma,
        tastingNotesTaste: tastingNotesTaste.present
            ? tastingNotesTaste.value
            : this.tastingNotesTaste,
        tastingNotesFinish: tastingNotesFinish.present
            ? tastingNotesFinish.value
            : this.tastingNotesFinish,
        caskType: caskType.present ? caskType.value : this.caskType,
        barrelStrength: barrelStrength ?? this.barrelStrength,
        availability:
            availability.present ? availability.value : this.availability,
        releaseYear: releaseYear ?? this.releaseYear,
      );
  ItemDetailsModel copyWithCompanion(ItemDetailsCompanion data) {
    return ItemDetailsModel(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      price: data.price.present ? data.price.value : this.price,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      category: data.category.present ? data.category.value : this.category,
      origin: data.origin.present ? data.origin.value : this.origin,
      distillery:
          data.distillery.present ? data.distillery.value : this.distillery,
      age: data.age.present ? data.age.value : this.age,
      alcoholVolume: data.alcoholVolume.present
          ? data.alcoholVolume.value
          : this.alcoholVolume,
      bottleSize:
          data.bottleSize.present ? data.bottleSize.value : this.bottleSize,
      flavorProfileNose: data.flavorProfileNose.present
          ? data.flavorProfileNose.value
          : this.flavorProfileNose,
      flavorProfilePalate: data.flavorProfilePalate.present
          ? data.flavorProfilePalate.value
          : this.flavorProfilePalate,
      flavorProfileFinish: data.flavorProfileFinish.present
          ? data.flavorProfileFinish.value
          : this.flavorProfileFinish,
      awards: data.awards.present ? data.awards.value : this.awards,
      tastingNotesColor: data.tastingNotesColor.present
          ? data.tastingNotesColor.value
          : this.tastingNotesColor,
      tastingNotesAroma: data.tastingNotesAroma.present
          ? data.tastingNotesAroma.value
          : this.tastingNotesAroma,
      tastingNotesTaste: data.tastingNotesTaste.present
          ? data.tastingNotesTaste.value
          : this.tastingNotesTaste,
      tastingNotesFinish: data.tastingNotesFinish.present
          ? data.tastingNotesFinish.value
          : this.tastingNotesFinish,
      caskType: data.caskType.present ? data.caskType.value : this.caskType,
      barrelStrength: data.barrelStrength.present
          ? data.barrelStrength.value
          : this.barrelStrength,
      availability: data.availability.present
          ? data.availability.value
          : this.availability,
      releaseYear:
          data.releaseYear.present ? data.releaseYear.value : this.releaseYear,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemDetailsModel(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('category: $category, ')
          ..write('origin: $origin, ')
          ..write('distillery: $distillery, ')
          ..write('age: $age, ')
          ..write('alcoholVolume: $alcoholVolume, ')
          ..write('bottleSize: $bottleSize, ')
          ..write('flavorProfileNose: $flavorProfileNose, ')
          ..write('flavorProfilePalate: $flavorProfilePalate, ')
          ..write('flavorProfileFinish: $flavorProfileFinish, ')
          ..write('awards: $awards, ')
          ..write('tastingNotesColor: $tastingNotesColor, ')
          ..write('tastingNotesAroma: $tastingNotesAroma, ')
          ..write('tastingNotesTaste: $tastingNotesTaste, ')
          ..write('tastingNotesFinish: $tastingNotesFinish, ')
          ..write('caskType: $caskType, ')
          ..write('barrelStrength: $barrelStrength, ')
          ..write('availability: $availability, ')
          ..write('releaseYear: $releaseYear')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        name,
        price,
        imageUrl,
        category,
        origin,
        distillery,
        age,
        alcoholVolume,
        bottleSize,
        flavorProfileNose,
        flavorProfilePalate,
        flavorProfileFinish,
        awards,
        tastingNotesColor,
        tastingNotesAroma,
        tastingNotesTaste,
        tastingNotesFinish,
        caskType,
        barrelStrength,
        availability,
        releaseYear
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemDetailsModel &&
          other.id == this.id &&
          other.name == this.name &&
          other.price == this.price &&
          other.imageUrl == this.imageUrl &&
          other.category == this.category &&
          other.origin == this.origin &&
          other.distillery == this.distillery &&
          other.age == this.age &&
          other.alcoholVolume == this.alcoholVolume &&
          other.bottleSize == this.bottleSize &&
          other.flavorProfileNose == this.flavorProfileNose &&
          other.flavorProfilePalate == this.flavorProfilePalate &&
          other.flavorProfileFinish == this.flavorProfileFinish &&
          other.awards == this.awards &&
          other.tastingNotesColor == this.tastingNotesColor &&
          other.tastingNotesAroma == this.tastingNotesAroma &&
          other.tastingNotesTaste == this.tastingNotesTaste &&
          other.tastingNotesFinish == this.tastingNotesFinish &&
          other.caskType == this.caskType &&
          other.barrelStrength == this.barrelStrength &&
          other.availability == this.availability &&
          other.releaseYear == this.releaseYear);
}

class ItemDetailsCompanion extends UpdateCompanion<ItemDetailsModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> price;
  final Value<String?> imageUrl;
  final Value<String> category;
  final Value<String> origin;
  final Value<String> distillery;
  final Value<String> age;
  final Value<double> alcoholVolume;
  final Value<double> bottleSize;
  final Value<String?> flavorProfileNose;
  final Value<String?> flavorProfilePalate;
  final Value<String?> flavorProfileFinish;
  final Value<String?> awards;
  final Value<String?> tastingNotesColor;
  final Value<String?> tastingNotesAroma;
  final Value<String?> tastingNotesTaste;
  final Value<String?> tastingNotesFinish;
  final Value<String?> caskType;
  final Value<bool> barrelStrength;
  final Value<String?> availability;
  final Value<int> releaseYear;
  const ItemDetailsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.price = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.category = const Value.absent(),
    this.origin = const Value.absent(),
    this.distillery = const Value.absent(),
    this.age = const Value.absent(),
    this.alcoholVolume = const Value.absent(),
    this.bottleSize = const Value.absent(),
    this.flavorProfileNose = const Value.absent(),
    this.flavorProfilePalate = const Value.absent(),
    this.flavorProfileFinish = const Value.absent(),
    this.awards = const Value.absent(),
    this.tastingNotesColor = const Value.absent(),
    this.tastingNotesAroma = const Value.absent(),
    this.tastingNotesTaste = const Value.absent(),
    this.tastingNotesFinish = const Value.absent(),
    this.caskType = const Value.absent(),
    this.barrelStrength = const Value.absent(),
    this.availability = const Value.absent(),
    this.releaseYear = const Value.absent(),
  });
  ItemDetailsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required double price,
    this.imageUrl = const Value.absent(),
    required String category,
    required String origin,
    required String distillery,
    required String age,
    required double alcoholVolume,
    required double bottleSize,
    this.flavorProfileNose = const Value.absent(),
    this.flavorProfilePalate = const Value.absent(),
    this.flavorProfileFinish = const Value.absent(),
    this.awards = const Value.absent(),
    this.tastingNotesColor = const Value.absent(),
    this.tastingNotesAroma = const Value.absent(),
    this.tastingNotesTaste = const Value.absent(),
    this.tastingNotesFinish = const Value.absent(),
    this.caskType = const Value.absent(),
    required bool barrelStrength,
    this.availability = const Value.absent(),
    required int releaseYear,
  })  : name = Value(name),
        price = Value(price),
        category = Value(category),
        origin = Value(origin),
        distillery = Value(distillery),
        age = Value(age),
        alcoholVolume = Value(alcoholVolume),
        bottleSize = Value(bottleSize),
        barrelStrength = Value(barrelStrength),
        releaseYear = Value(releaseYear);
  static Insertable<ItemDetailsModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<double>? price,
    Expression<String>? imageUrl,
    Expression<String>? category,
    Expression<String>? origin,
    Expression<String>? distillery,
    Expression<String>? age,
    Expression<double>? alcoholVolume,
    Expression<double>? bottleSize,
    Expression<String>? flavorProfileNose,
    Expression<String>? flavorProfilePalate,
    Expression<String>? flavorProfileFinish,
    Expression<String>? awards,
    Expression<String>? tastingNotesColor,
    Expression<String>? tastingNotesAroma,
    Expression<String>? tastingNotesTaste,
    Expression<String>? tastingNotesFinish,
    Expression<String>? caskType,
    Expression<bool>? barrelStrength,
    Expression<String>? availability,
    Expression<int>? releaseYear,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (price != null) 'price': price,
      if (imageUrl != null) 'image_url': imageUrl,
      if (category != null) 'category': category,
      if (origin != null) 'origin': origin,
      if (distillery != null) 'distillery': distillery,
      if (age != null) 'age': age,
      if (alcoholVolume != null) 'alcohol_volume': alcoholVolume,
      if (bottleSize != null) 'bottle_size': bottleSize,
      if (flavorProfileNose != null) 'flavor_profile_nose': flavorProfileNose,
      if (flavorProfilePalate != null)
        'flavor_profile_palate': flavorProfilePalate,
      if (flavorProfileFinish != null)
        'flavor_profile_finish': flavorProfileFinish,
      if (awards != null) 'awards': awards,
      if (tastingNotesColor != null) 'tasting_notes_color': tastingNotesColor,
      if (tastingNotesAroma != null) 'tasting_notes_aroma': tastingNotesAroma,
      if (tastingNotesTaste != null) 'tasting_notes_taste': tastingNotesTaste,
      if (tastingNotesFinish != null)
        'tasting_notes_finish': tastingNotesFinish,
      if (caskType != null) 'cask_type': caskType,
      if (barrelStrength != null) 'barrel_strength': barrelStrength,
      if (availability != null) 'availability': availability,
      if (releaseYear != null) 'release_year': releaseYear,
    });
  }

  ItemDetailsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<double>? price,
      Value<String?>? imageUrl,
      Value<String>? category,
      Value<String>? origin,
      Value<String>? distillery,
      Value<String>? age,
      Value<double>? alcoholVolume,
      Value<double>? bottleSize,
      Value<String?>? flavorProfileNose,
      Value<String?>? flavorProfilePalate,
      Value<String?>? flavorProfileFinish,
      Value<String?>? awards,
      Value<String?>? tastingNotesColor,
      Value<String?>? tastingNotesAroma,
      Value<String?>? tastingNotesTaste,
      Value<String?>? tastingNotesFinish,
      Value<String?>? caskType,
      Value<bool>? barrelStrength,
      Value<String?>? availability,
      Value<int>? releaseYear}) {
    return ItemDetailsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      category: category ?? this.category,
      origin: origin ?? this.origin,
      distillery: distillery ?? this.distillery,
      age: age ?? this.age,
      alcoholVolume: alcoholVolume ?? this.alcoholVolume,
      bottleSize: bottleSize ?? this.bottleSize,
      flavorProfileNose: flavorProfileNose ?? this.flavorProfileNose,
      flavorProfilePalate: flavorProfilePalate ?? this.flavorProfilePalate,
      flavorProfileFinish: flavorProfileFinish ?? this.flavorProfileFinish,
      awards: awards ?? this.awards,
      tastingNotesColor: tastingNotesColor ?? this.tastingNotesColor,
      tastingNotesAroma: tastingNotesAroma ?? this.tastingNotesAroma,
      tastingNotesTaste: tastingNotesTaste ?? this.tastingNotesTaste,
      tastingNotesFinish: tastingNotesFinish ?? this.tastingNotesFinish,
      caskType: caskType ?? this.caskType,
      barrelStrength: barrelStrength ?? this.barrelStrength,
      availability: availability ?? this.availability,
      releaseYear: releaseYear ?? this.releaseYear,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (origin.present) {
      map['origin'] = Variable<String>(origin.value);
    }
    if (distillery.present) {
      map['distillery'] = Variable<String>(distillery.value);
    }
    if (age.present) {
      map['age'] = Variable<String>(age.value);
    }
    if (alcoholVolume.present) {
      map['alcohol_volume'] = Variable<double>(alcoholVolume.value);
    }
    if (bottleSize.present) {
      map['bottle_size'] = Variable<double>(bottleSize.value);
    }
    if (flavorProfileNose.present) {
      map['flavor_profile_nose'] = Variable<String>(flavorProfileNose.value);
    }
    if (flavorProfilePalate.present) {
      map['flavor_profile_palate'] =
          Variable<String>(flavorProfilePalate.value);
    }
    if (flavorProfileFinish.present) {
      map['flavor_profile_finish'] =
          Variable<String>(flavorProfileFinish.value);
    }
    if (awards.present) {
      map['awards'] = Variable<String>(awards.value);
    }
    if (tastingNotesColor.present) {
      map['tasting_notes_color'] = Variable<String>(tastingNotesColor.value);
    }
    if (tastingNotesAroma.present) {
      map['tasting_notes_aroma'] = Variable<String>(tastingNotesAroma.value);
    }
    if (tastingNotesTaste.present) {
      map['tasting_notes_taste'] = Variable<String>(tastingNotesTaste.value);
    }
    if (tastingNotesFinish.present) {
      map['tasting_notes_finish'] = Variable<String>(tastingNotesFinish.value);
    }
    if (caskType.present) {
      map['cask_type'] = Variable<String>(caskType.value);
    }
    if (barrelStrength.present) {
      map['barrel_strength'] = Variable<bool>(barrelStrength.value);
    }
    if (availability.present) {
      map['availability'] = Variable<String>(availability.value);
    }
    if (releaseYear.present) {
      map['release_year'] = Variable<int>(releaseYear.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemDetailsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('category: $category, ')
          ..write('origin: $origin, ')
          ..write('distillery: $distillery, ')
          ..write('age: $age, ')
          ..write('alcoholVolume: $alcoholVolume, ')
          ..write('bottleSize: $bottleSize, ')
          ..write('flavorProfileNose: $flavorProfileNose, ')
          ..write('flavorProfilePalate: $flavorProfilePalate, ')
          ..write('flavorProfileFinish: $flavorProfileFinish, ')
          ..write('awards: $awards, ')
          ..write('tastingNotesColor: $tastingNotesColor, ')
          ..write('tastingNotesAroma: $tastingNotesAroma, ')
          ..write('tastingNotesTaste: $tastingNotesTaste, ')
          ..write('tastingNotesFinish: $tastingNotesFinish, ')
          ..write('caskType: $caskType, ')
          ..write('barrelStrength: $barrelStrength, ')
          ..write('availability: $availability, ')
          ..write('releaseYear: $releaseYear')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CollectionsTable collections = $CollectionsTable(this);
  late final $ItemDetailsTable itemDetails = $ItemDetailsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [collections, itemDetails];
}

typedef $$CollectionsTableCreateCompanionBuilder = CollectionsCompanion
    Function({
  Value<int> id,
  required String name,
  required String code,
  required String image_url,
});
typedef $$CollectionsTableUpdateCompanionBuilder = CollectionsCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> code,
  Value<String> image_url,
});

class $$CollectionsTableFilterComposer
    extends Composer<_$AppDatabase, $CollectionsTable> {
  $$CollectionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image_url => $composableBuilder(
      column: $table.image_url, builder: (column) => ColumnFilters(column));
}

class $$CollectionsTableOrderingComposer
    extends Composer<_$AppDatabase, $CollectionsTable> {
  $$CollectionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image_url => $composableBuilder(
      column: $table.image_url, builder: (column) => ColumnOrderings(column));
}

class $$CollectionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CollectionsTable> {
  $$CollectionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get image_url =>
      $composableBuilder(column: $table.image_url, builder: (column) => column);
}

class $$CollectionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CollectionsTable,
    CollectionsModel,
    $$CollectionsTableFilterComposer,
    $$CollectionsTableOrderingComposer,
    $$CollectionsTableAnnotationComposer,
    $$CollectionsTableCreateCompanionBuilder,
    $$CollectionsTableUpdateCompanionBuilder,
    (
      CollectionsModel,
      BaseReferences<_$AppDatabase, $CollectionsTable, CollectionsModel>
    ),
    CollectionsModel,
    PrefetchHooks Function()> {
  $$CollectionsTableTableManager(_$AppDatabase db, $CollectionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CollectionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CollectionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CollectionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> image_url = const Value.absent(),
          }) =>
              CollectionsCompanion(
            id: id,
            name: name,
            code: code,
            image_url: image_url,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String code,
            required String image_url,
          }) =>
              CollectionsCompanion.insert(
            id: id,
            name: name,
            code: code,
            image_url: image_url,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CollectionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CollectionsTable,
    CollectionsModel,
    $$CollectionsTableFilterComposer,
    $$CollectionsTableOrderingComposer,
    $$CollectionsTableAnnotationComposer,
    $$CollectionsTableCreateCompanionBuilder,
    $$CollectionsTableUpdateCompanionBuilder,
    (
      CollectionsModel,
      BaseReferences<_$AppDatabase, $CollectionsTable, CollectionsModel>
    ),
    CollectionsModel,
    PrefetchHooks Function()>;
typedef $$ItemDetailsTableCreateCompanionBuilder = ItemDetailsCompanion
    Function({
  Value<int> id,
  required String name,
  required double price,
  Value<String?> imageUrl,
  required String category,
  required String origin,
  required String distillery,
  required String age,
  required double alcoholVolume,
  required double bottleSize,
  Value<String?> flavorProfileNose,
  Value<String?> flavorProfilePalate,
  Value<String?> flavorProfileFinish,
  Value<String?> awards,
  Value<String?> tastingNotesColor,
  Value<String?> tastingNotesAroma,
  Value<String?> tastingNotesTaste,
  Value<String?> tastingNotesFinish,
  Value<String?> caskType,
  required bool barrelStrength,
  Value<String?> availability,
  required int releaseYear,
});
typedef $$ItemDetailsTableUpdateCompanionBuilder = ItemDetailsCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<double> price,
  Value<String?> imageUrl,
  Value<String> category,
  Value<String> origin,
  Value<String> distillery,
  Value<String> age,
  Value<double> alcoholVolume,
  Value<double> bottleSize,
  Value<String?> flavorProfileNose,
  Value<String?> flavorProfilePalate,
  Value<String?> flavorProfileFinish,
  Value<String?> awards,
  Value<String?> tastingNotesColor,
  Value<String?> tastingNotesAroma,
  Value<String?> tastingNotesTaste,
  Value<String?> tastingNotesFinish,
  Value<String?> caskType,
  Value<bool> barrelStrength,
  Value<String?> availability,
  Value<int> releaseYear,
});

class $$ItemDetailsTableFilterComposer
    extends Composer<_$AppDatabase, $ItemDetailsTable> {
  $$ItemDetailsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get origin => $composableBuilder(
      column: $table.origin, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get distillery => $composableBuilder(
      column: $table.distillery, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get age => $composableBuilder(
      column: $table.age, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get alcoholVolume => $composableBuilder(
      column: $table.alcoholVolume, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get bottleSize => $composableBuilder(
      column: $table.bottleSize, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get flavorProfileNose => $composableBuilder(
      column: $table.flavorProfileNose,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get flavorProfilePalate => $composableBuilder(
      column: $table.flavorProfilePalate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get flavorProfileFinish => $composableBuilder(
      column: $table.flavorProfileFinish,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get awards => $composableBuilder(
      column: $table.awards, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tastingNotesColor => $composableBuilder(
      column: $table.tastingNotesColor,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tastingNotesAroma => $composableBuilder(
      column: $table.tastingNotesAroma,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tastingNotesTaste => $composableBuilder(
      column: $table.tastingNotesTaste,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tastingNotesFinish => $composableBuilder(
      column: $table.tastingNotesFinish,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get caskType => $composableBuilder(
      column: $table.caskType, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get barrelStrength => $composableBuilder(
      column: $table.barrelStrength,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get availability => $composableBuilder(
      column: $table.availability, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get releaseYear => $composableBuilder(
      column: $table.releaseYear, builder: (column) => ColumnFilters(column));
}

class $$ItemDetailsTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemDetailsTable> {
  $$ItemDetailsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get origin => $composableBuilder(
      column: $table.origin, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get distillery => $composableBuilder(
      column: $table.distillery, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get age => $composableBuilder(
      column: $table.age, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get alcoholVolume => $composableBuilder(
      column: $table.alcoholVolume,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get bottleSize => $composableBuilder(
      column: $table.bottleSize, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get flavorProfileNose => $composableBuilder(
      column: $table.flavorProfileNose,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get flavorProfilePalate => $composableBuilder(
      column: $table.flavorProfilePalate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get flavorProfileFinish => $composableBuilder(
      column: $table.flavorProfileFinish,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get awards => $composableBuilder(
      column: $table.awards, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tastingNotesColor => $composableBuilder(
      column: $table.tastingNotesColor,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tastingNotesAroma => $composableBuilder(
      column: $table.tastingNotesAroma,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tastingNotesTaste => $composableBuilder(
      column: $table.tastingNotesTaste,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tastingNotesFinish => $composableBuilder(
      column: $table.tastingNotesFinish,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get caskType => $composableBuilder(
      column: $table.caskType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get barrelStrength => $composableBuilder(
      column: $table.barrelStrength,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get availability => $composableBuilder(
      column: $table.availability,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get releaseYear => $composableBuilder(
      column: $table.releaseYear, builder: (column) => ColumnOrderings(column));
}

class $$ItemDetailsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemDetailsTable> {
  $$ItemDetailsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get origin =>
      $composableBuilder(column: $table.origin, builder: (column) => column);

  GeneratedColumn<String> get distillery => $composableBuilder(
      column: $table.distillery, builder: (column) => column);

  GeneratedColumn<String> get age =>
      $composableBuilder(column: $table.age, builder: (column) => column);

  GeneratedColumn<double> get alcoholVolume => $composableBuilder(
      column: $table.alcoholVolume, builder: (column) => column);

  GeneratedColumn<double> get bottleSize => $composableBuilder(
      column: $table.bottleSize, builder: (column) => column);

  GeneratedColumn<String> get flavorProfileNose => $composableBuilder(
      column: $table.flavorProfileNose, builder: (column) => column);

  GeneratedColumn<String> get flavorProfilePalate => $composableBuilder(
      column: $table.flavorProfilePalate, builder: (column) => column);

  GeneratedColumn<String> get flavorProfileFinish => $composableBuilder(
      column: $table.flavorProfileFinish, builder: (column) => column);

  GeneratedColumn<String> get awards =>
      $composableBuilder(column: $table.awards, builder: (column) => column);

  GeneratedColumn<String> get tastingNotesColor => $composableBuilder(
      column: $table.tastingNotesColor, builder: (column) => column);

  GeneratedColumn<String> get tastingNotesAroma => $composableBuilder(
      column: $table.tastingNotesAroma, builder: (column) => column);

  GeneratedColumn<String> get tastingNotesTaste => $composableBuilder(
      column: $table.tastingNotesTaste, builder: (column) => column);

  GeneratedColumn<String> get tastingNotesFinish => $composableBuilder(
      column: $table.tastingNotesFinish, builder: (column) => column);

  GeneratedColumn<String> get caskType =>
      $composableBuilder(column: $table.caskType, builder: (column) => column);

  GeneratedColumn<bool> get barrelStrength => $composableBuilder(
      column: $table.barrelStrength, builder: (column) => column);

  GeneratedColumn<String> get availability => $composableBuilder(
      column: $table.availability, builder: (column) => column);

  GeneratedColumn<int> get releaseYear => $composableBuilder(
      column: $table.releaseYear, builder: (column) => column);
}

class $$ItemDetailsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemDetailsTable,
    ItemDetailsModel,
    $$ItemDetailsTableFilterComposer,
    $$ItemDetailsTableOrderingComposer,
    $$ItemDetailsTableAnnotationComposer,
    $$ItemDetailsTableCreateCompanionBuilder,
    $$ItemDetailsTableUpdateCompanionBuilder,
    (
      ItemDetailsModel,
      BaseReferences<_$AppDatabase, $ItemDetailsTable, ItemDetailsModel>
    ),
    ItemDetailsModel,
    PrefetchHooks Function()> {
  $$ItemDetailsTableTableManager(_$AppDatabase db, $ItemDetailsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemDetailsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemDetailsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemDetailsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String> category = const Value.absent(),
            Value<String> origin = const Value.absent(),
            Value<String> distillery = const Value.absent(),
            Value<String> age = const Value.absent(),
            Value<double> alcoholVolume = const Value.absent(),
            Value<double> bottleSize = const Value.absent(),
            Value<String?> flavorProfileNose = const Value.absent(),
            Value<String?> flavorProfilePalate = const Value.absent(),
            Value<String?> flavorProfileFinish = const Value.absent(),
            Value<String?> awards = const Value.absent(),
            Value<String?> tastingNotesColor = const Value.absent(),
            Value<String?> tastingNotesAroma = const Value.absent(),
            Value<String?> tastingNotesTaste = const Value.absent(),
            Value<String?> tastingNotesFinish = const Value.absent(),
            Value<String?> caskType = const Value.absent(),
            Value<bool> barrelStrength = const Value.absent(),
            Value<String?> availability = const Value.absent(),
            Value<int> releaseYear = const Value.absent(),
          }) =>
              ItemDetailsCompanion(
            id: id,
            name: name,
            price: price,
            imageUrl: imageUrl,
            category: category,
            origin: origin,
            distillery: distillery,
            age: age,
            alcoholVolume: alcoholVolume,
            bottleSize: bottleSize,
            flavorProfileNose: flavorProfileNose,
            flavorProfilePalate: flavorProfilePalate,
            flavorProfileFinish: flavorProfileFinish,
            awards: awards,
            tastingNotesColor: tastingNotesColor,
            tastingNotesAroma: tastingNotesAroma,
            tastingNotesTaste: tastingNotesTaste,
            tastingNotesFinish: tastingNotesFinish,
            caskType: caskType,
            barrelStrength: barrelStrength,
            availability: availability,
            releaseYear: releaseYear,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required double price,
            Value<String?> imageUrl = const Value.absent(),
            required String category,
            required String origin,
            required String distillery,
            required String age,
            required double alcoholVolume,
            required double bottleSize,
            Value<String?> flavorProfileNose = const Value.absent(),
            Value<String?> flavorProfilePalate = const Value.absent(),
            Value<String?> flavorProfileFinish = const Value.absent(),
            Value<String?> awards = const Value.absent(),
            Value<String?> tastingNotesColor = const Value.absent(),
            Value<String?> tastingNotesAroma = const Value.absent(),
            Value<String?> tastingNotesTaste = const Value.absent(),
            Value<String?> tastingNotesFinish = const Value.absent(),
            Value<String?> caskType = const Value.absent(),
            required bool barrelStrength,
            Value<String?> availability = const Value.absent(),
            required int releaseYear,
          }) =>
              ItemDetailsCompanion.insert(
            id: id,
            name: name,
            price: price,
            imageUrl: imageUrl,
            category: category,
            origin: origin,
            distillery: distillery,
            age: age,
            alcoholVolume: alcoholVolume,
            bottleSize: bottleSize,
            flavorProfileNose: flavorProfileNose,
            flavorProfilePalate: flavorProfilePalate,
            flavorProfileFinish: flavorProfileFinish,
            awards: awards,
            tastingNotesColor: tastingNotesColor,
            tastingNotesAroma: tastingNotesAroma,
            tastingNotesTaste: tastingNotesTaste,
            tastingNotesFinish: tastingNotesFinish,
            caskType: caskType,
            barrelStrength: barrelStrength,
            availability: availability,
            releaseYear: releaseYear,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ItemDetailsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemDetailsTable,
    ItemDetailsModel,
    $$ItemDetailsTableFilterComposer,
    $$ItemDetailsTableOrderingComposer,
    $$ItemDetailsTableAnnotationComposer,
    $$ItemDetailsTableCreateCompanionBuilder,
    $$ItemDetailsTableUpdateCompanionBuilder,
    (
      ItemDetailsModel,
      BaseReferences<_$AppDatabase, $ItemDetailsTable, ItemDetailsModel>
    ),
    ItemDetailsModel,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CollectionsTableTableManager get collections =>
      $$CollectionsTableTableManager(_db, _db.collections);
  $$ItemDetailsTableTableManager get itemDetails =>
      $$ItemDetailsTableTableManager(_db, _db.itemDetails);
}
