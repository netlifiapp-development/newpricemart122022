// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserCartRecord> _$userCartRecordSerializer =
    new _$UserCartRecordSerializer();

class _$UserCartRecordSerializer
    implements StructuredSerializer<UserCartRecord> {
  @override
  final Iterable<Type> types = const [UserCartRecord, _$UserCartRecord];
  @override
  final String wireName = 'UserCartRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserCartRecord object,
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
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shippingaddress;
    if (value != null) {
      result
        ..add('Shippingaddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  UserCartRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserCartRecordBuilder();

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
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Shippingaddress':
          result.shippingaddress = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$UserCartRecord extends UserCartRecord {
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
  final DocumentReference<Object?>? user;
  @override
  final DateTime? timestamp;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? shippingaddress;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserCartRecord([void Function(UserCartRecordBuilder)? updates]) =>
      (new UserCartRecordBuilder()..update(updates))._build();

  _$UserCartRecord._(
      {this.name,
      this.price,
      this.description,
      this.type,
      this.image,
      this.user,
      this.timestamp,
      this.status,
      this.shippingaddress,
      this.ffRef})
      : super._();

  @override
  UserCartRecord rebuild(void Function(UserCartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCartRecordBuilder toBuilder() =>
      new UserCartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCartRecord &&
        name == other.name &&
        price == other.price &&
        description == other.description &&
        type == other.type &&
        image == other.image &&
        user == other.user &&
        timestamp == other.timestamp &&
        status == other.status &&
        shippingaddress == other.shippingaddress &&
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
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, shippingaddress.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCartRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('description', description)
          ..add('type', type)
          ..add('image', image)
          ..add('user', user)
          ..add('timestamp', timestamp)
          ..add('status', status)
          ..add('shippingaddress', shippingaddress)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserCartRecordBuilder
    implements Builder<UserCartRecord, UserCartRecordBuilder> {
  _$UserCartRecord? _$v;

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

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _shippingaddress;
  DocumentReference<Object?>? get shippingaddress => _$this._shippingaddress;
  set shippingaddress(DocumentReference<Object?>? shippingaddress) =>
      _$this._shippingaddress = shippingaddress;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserCartRecordBuilder() {
    UserCartRecord._initializeBuilder(this);
  }

  UserCartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _description = $v.description;
      _type = $v.type?.toBuilder();
      _image = $v.image;
      _user = $v.user;
      _timestamp = $v.timestamp;
      _status = $v.status;
      _shippingaddress = $v.shippingaddress;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserCartRecord;
  }

  @override
  void update(void Function(UserCartRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCartRecord build() => _build();

  _$UserCartRecord _build() {
    _$UserCartRecord _$result;
    try {
      _$result = _$v ??
          new _$UserCartRecord._(
              name: name,
              price: price,
              description: description,
              type: _type?.build(),
              image: image,
              user: user,
              timestamp: timestamp,
              status: status,
              shippingaddress: shippingaddress,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'type';
        _type?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserCartRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
