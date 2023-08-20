// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<OrderItemStruct>> finalCalculation(
    List<OrderItemStruct> orderItems) async {
  var map = Map();
  orderItems.forEach((element) {
    if (!map.containsKey(element.sku)) {
      map[element.sku] = element;
    } else {
      map[element.sku].count += 1;
    }
  });
  List<OrderItemStruct> finalResults =
      map.entries.map((entry) => entry as OrderItemStruct).toList();
  return finalResults;
}
