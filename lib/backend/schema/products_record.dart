import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "fee" field.
  int? _fee;
  int get fee => _fee ?? 0;
  bool hasFee() => _fee != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _sku = snapshotData['sku'] as String?;
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _fee = castToType<int>(snapshotData['fee']);
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  int? id,
  String? sku,
  String? name,
  double? price,
  int? fee,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'sku': sku,
      'name': name,
      'price': price,
      'fee': fee,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.sku == e2?.sku &&
        e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.fee == e2?.fee &&
        e1?.category == e2?.category;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality()
      .hash([e?.id, e?.sku, e?.name, e?.price, e?.fee, e?.category]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
