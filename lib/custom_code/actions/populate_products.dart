// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<ProductStruct>> populateProducts() async {
  CollectionReference _collectionRef =
      FirebaseFirestore.instance.collection('products');
  QuerySnapshot querySnapshot = await _collectionRef.get();
  final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  List<ProductStruct> finalResults = allData
      .map((entry) => ProductStruct(name: (entry as ProductStruct).name))
      .toList();

  return finalResults;
}
