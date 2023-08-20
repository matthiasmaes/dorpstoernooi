// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderItemStruct extends FFFirebaseStruct {
  OrderItemStruct({
    String? name,
    int? fee,
    String? category,
    String? sku,
    double? price,
    int? count,
    double? subtotal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _fee = fee,
        _category = category,
        _sku = sku,
        _price = price,
        _count = count,
        _subtotal = subtotal,
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

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;
  void incrementCount(int amount) => _count = count + amount;
  bool hasCount() => _count != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;
  void incrementSubtotal(double amount) => _subtotal = subtotal + amount;
  bool hasSubtotal() => _subtotal != null;

  static OrderItemStruct fromMap(Map<String, dynamic> data) => OrderItemStruct(
        name: data['name'] as String?,
        fee: castToType<int>(data['fee']),
        category: data['category'] as String?,
        sku: data['sku'] as String?,
        price: castToType<double>(data['price']),
        count: castToType<int>(data['count']),
        subtotal: castToType<double>(data['subtotal']),
      );

  static OrderItemStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OrderItemStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'fee': _fee,
        'category': _category,
        'sku': _sku,
        'price': _price,
        'count': _count,
        'subtotal': _subtotal,
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
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
      }.withoutNulls;

  static OrderItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderItemStruct(
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
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OrderItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderItemStruct &&
        name == other.name &&
        fee == other.fee &&
        category == other.category &&
        sku == other.sku &&
        price == other.price &&
        count == other.count &&
        subtotal == other.subtotal;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, fee, category, sku, price, count, subtotal]);
}

OrderItemStruct createOrderItemStruct({
  String? name,
  int? fee,
  String? category,
  String? sku,
  double? price,
  int? count,
  double? subtotal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderItemStruct(
      name: name,
      fee: fee,
      category: category,
      sku: sku,
      price: price,
      count: count,
      subtotal: subtotal,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderItemStruct? updateOrderItemStruct(
  OrderItemStruct? orderItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderItemStructData(
  Map<String, dynamic> firestoreData,
  OrderItemStruct? orderItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderItem == null) {
    return;
  }
  if (orderItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderItemData = getOrderItemFirestoreData(orderItem, forFieldValue);
  final nestedData = orderItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderItemFirestoreData(
  OrderItemStruct? orderItem, [
  bool forFieldValue = false,
]) {
  if (orderItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderItem.toMap());

  // Add any Firestore field values
  orderItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderItemListFirestoreData(
  List<OrderItemStruct>? orderItems,
) =>
    orderItems?.map((e) => getOrderItemFirestoreData(e, true)).toList() ?? [];
