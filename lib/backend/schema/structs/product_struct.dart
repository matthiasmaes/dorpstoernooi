// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends FFFirebaseStruct {
  ProductStruct({
    String? name,
    int? fee,
    String? category,
    String? sku,
    double? price,
    DocumentReference? productId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _fee = fee,
        _category = category,
        _sku = sku,
        _price = price,
        _productId = productId,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "fee" field.
  int? _fee;
  int get fee => _fee ?? 0;
  set fee(int? val) => _fee = val;
  void incrementFee(int amount) => _fee = fee + amount;
  bool hasFee() => _fee != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;
  bool hasSku() => _sku != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "product_id" field.
  DocumentReference? _productId;
  DocumentReference? get productId => _productId;
  set productId(DocumentReference? val) => _productId = val;
  bool hasProductId() => _productId != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        name: data['name'] as String?,
        fee: castToType<int>(data['fee']),
        category: data['category'] as String?,
        sku: data['sku'] as String?,
        price: castToType<double>(data['price']),
        productId: data['product_id'] as DocumentReference?,
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ProductStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'fee': _fee,
        'category': _category,
        'sku': _sku,
        'price': _price,
        'product_id': _productId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'fee': serializeParam(
          _fee,
          ParamType.int,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'product_id': serializeParam(
          _productId,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        fee: deserializeParam(
          data['fee'],
          ParamType.int,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        productId: deserializeParam(
          data['product_id'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['products'],
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        name == other.name &&
        fee == other.fee &&
        category == other.category &&
        sku == other.sku &&
        price == other.price &&
        productId == other.productId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, fee, category, sku, price, productId]);
}

ProductStruct createProductStruct({
  String? name,
  int? fee,
  String? category,
  String? sku,
  double? price,
  DocumentReference? productId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductStruct(
      name: name,
      fee: fee,
      category: category,
      sku: sku,
      price: price,
      productId: productId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductStruct? updateProductStruct(
  ProductStruct? product, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    product
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductStructData(
  Map<String, dynamic> firestoreData,
  ProductStruct? product,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (product == null) {
    return;
  }
  if (product.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && product.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productData = getProductFirestoreData(product, forFieldValue);
  final nestedData = productData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = product.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductFirestoreData(
  ProductStruct? product, [
  bool forFieldValue = false,
]) {
  if (product == null) {
    return {};
  }
  final firestoreData = mapToFirestore(product.toMap());

  // Add any Firestore field values
  product.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductListFirestoreData(
  List<ProductStruct>? products,
) =>
    products?.map((e) => getProductFirestoreData(e, true)).toList() ?? [];
