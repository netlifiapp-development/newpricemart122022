// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuRecord> _$menuRecordSerializer = new _$MenuRecordSerializer();

class _$MenuRecordSerializer implements StructuredSerializer<MenuRecord> {
  @override
  final Iterable<Type> types = const [MenuRecord, _$MenuRecord];
  @override
  final String wireName = 'MenuRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MenuRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MenuRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MenuRecord extends MenuRecord {
  @override
  final String? name;
  @override
  final String? price;
  @override
  final String? description;
  @override
  final BuiltList<String>? type;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MenuRecord([void Function(MenuRecordBuilder)? updates]) =>
      (new MenuRecordBuilder()..update(updates))._build();

  _$MenuRecord._(
      {this.name,
      this.price,
      this.description,
      this.type,
      this.image,
      this.ffRef})
      : super._();

  @override
  MenuRecord rebuild(void Function(MenuRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuRecordBuilder toBuilder() => new MenuRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuRecord &&
        name == other.name &&
        price == other.price &&
        description == other.description &&
        type == other.type &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MenuRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('description', description)
          ..add('type', type)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MenuRecordBuilder implements Builder<MenuRecord, MenuRecordBuilder> {
  _$MenuRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _type;
  ListBuilder<String> get type => _$this._type ??= new ListBuilder<String>();
  set type(ListBuilder<String>? type) => _$this._type = type;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MenuRecordBuilder() {
    MenuRecord._initializeBuilder(this);
  }

  MenuRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _description = $v.description;
      _type = $v.type?.toBuilder();
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuRecord;
  }

  @override
  void update(void Function(MenuRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MenuRecord build() => _build();

  _$MenuRecord _build() {
    _$MenuRecord _$result;
    try {
      _$result = _$v ??
          new _$MenuRecord._(
              name: name,
              price: price,
              description: description,
              type: _type?.build(),
              image: image,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'type';
        _type?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MenuRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
