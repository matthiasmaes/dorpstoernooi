import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _products = prefs
              .getStringList('ff_products')
              ?.map((x) {
                try {
                  return ProductStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _products;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _order = [];
  List<String> get order => _order;
  set order(List<String> _value) {
    _order = _value;
  }

  void addToOrder(String _value) {
    _order.add(_value);
  }

  void removeFromOrder(String _value) {
    _order.remove(_value);
  }

  void removeAtIndexFromOrder(int _index) {
    _order.removeAt(_index);
  }

  void updateOrderAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _order[_index] = updateFn(_order[_index]);
  }

  List<ProductStruct> _products = [];
  List<ProductStruct> get products => _products;
  set products(List<ProductStruct> _value) {
    _products = _value;
    prefs.setStringList(
        'ff_products', _value.map((x) => x.serialize()).toList());
  }

  void addToProducts(ProductStruct _value) {
    _products.add(_value);
    prefs.setStringList(
        'ff_products', _products.map((x) => x.serialize()).toList());
  }

  void removeFromProducts(ProductStruct _value) {
    _products.remove(_value);
    prefs.setStringList(
        'ff_products', _products.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProducts(int _index) {
    _products.removeAt(_index);
    prefs.setStringList(
        'ff_products', _products.map((x) => x.serialize()).toList());
  }

  void updateProductsAtIndex(
    int _index,
    ProductStruct Function(ProductStruct) updateFn,
  ) {
    _products[_index] = updateFn(_products[_index]);
    prefs.setStringList(
        'ff_products', _products.map((x) => x.serialize()).toList());
  }

  int _total = 0;
  int get total => _total;
  set total(int _value) {
    _total = _value;
  }

  List<OrderItemStruct> _orderItems = [];
  List<OrderItemStruct> get orderItems => _orderItems;
  set orderItems(List<OrderItemStruct> _value) {
    _orderItems = _value;
  }

  void addToOrderItems(OrderItemStruct _value) {
    _orderItems.add(_value);
  }

  void removeFromOrderItems(OrderItemStruct _value) {
    _orderItems.remove(_value);
  }

  void removeAtIndexFromOrderItems(int _index) {
    _orderItems.removeAt(_index);
  }

  void updateOrderItemsAtIndex(
    int _index,
    OrderItemStruct Function(OrderItemStruct) updateFn,
  ) {
    _orderItems[_index] = updateFn(_orderItems[_index]);
  }

  List<OrderItemStruct> _joinedOrder = [];
  List<OrderItemStruct> get joinedOrder => _joinedOrder;
  set joinedOrder(List<OrderItemStruct> _value) {
    _joinedOrder = _value;
  }

  void addToJoinedOrder(OrderItemStruct _value) {
    _joinedOrder.add(_value);
  }

  void removeFromJoinedOrder(OrderItemStruct _value) {
    _joinedOrder.remove(_value);
  }

  void removeAtIndexFromJoinedOrder(int _index) {
    _joinedOrder.removeAt(_index);
  }

  void updateJoinedOrderAtIndex(
    int _index,
    OrderItemStruct Function(OrderItemStruct) updateFn,
  ) {
    _joinedOrder[_index] = updateFn(_joinedOrder[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
