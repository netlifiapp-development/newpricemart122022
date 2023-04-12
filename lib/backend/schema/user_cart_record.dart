import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_cart_record.g.dart';

abstract class UserCartRecord
    implements Built<UserCartRecord, UserCartRecordBuilder> {
  static Serializer<UserCartRecord> get serializer =>
      _$userCartRecordSerializer;

  String? get name;

  String? get price;

  String? get description;

  BuiltList<String>? get type;

  String? get image;

  DocumentReference? get user;

  DateTime? get timestamp;

  String? get status;

  @BuiltValueField(wireName: 'Shippingaddress')
  DocumentReference? get shippingaddress;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserCartRecordBuilder builder) => builder
    ..name = ''
    ..price = ''
    ..description = ''
    ..type = ListBuilder()
    ..image = ''
    ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_cart');

  static Stream<UserCartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserCartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserCartRecord._();
  factory UserCartRecord([void Function(UserCartRecordBuilder) updates]) =
      _$UserCartRecord;

  static UserCartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserCartRecordData({
  String? name,
  String? price,
  String? description,
  String? image,
  DocumentReference? user,
  DateTime? timestamp,
  String? status,
  DocumentReference? shippingaddress,
}) {
  final firestoreData = serializers.toFirestore(
    UserCartRecord.serializer,
    UserCartRecord(
      (u) => u
        ..name = name
        ..price = price
        ..description = description
        ..type = null
        ..image = image
        ..user = user
        ..timestamp = timestamp
        ..status = status
        ..shippingaddress = shippingaddress,
    ),
  );

  return firestoreData;
}
