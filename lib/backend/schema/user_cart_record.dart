import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCartRecord extends FirestoreRecord {
  UserCartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "type" field.
  List<String>? _type;
  List<String> get type => _type ?? const [];
  bool hasType() => _type != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = snapshotData['price'] as String?;
    _description = snapshotData['description'] as String?;
    _type = getDataList(snapshotData['type']);
    _image = snapshotData['image'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_cart');

  static Stream<UserCartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCartRecord.fromSnapshot(s));

  static Future<UserCartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCartRecord.fromSnapshot(s));

  static UserCartRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCartRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUserCartRecordData({
  String? name,
  String? price,
  String? description,
  String? image,
  DocumentReference? user,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'description': description,
      'image': image,
      'user': user,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}
