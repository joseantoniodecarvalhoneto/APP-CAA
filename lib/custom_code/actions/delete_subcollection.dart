// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> deleteSubcollection(
    String collectionPath, String docId, String subcollectionName) async {
  // Caminho da subcoleção
  CollectionReference subcollectionRef = FirebaseFirestore.instance
      .collection(collectionPath)
      .doc(docId)
      .collection(subcollectionName);

  // Buscar todos os documentos da subcoleção
  QuerySnapshot subcollectionDocs = await subcollectionRef.get();

  // Excluir cada documento da subcoleção
  for (var doc in subcollectionDocs.docs) {
    await doc.reference.delete();
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
