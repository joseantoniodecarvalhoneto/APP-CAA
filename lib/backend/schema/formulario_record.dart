import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormularioRecord extends FirestoreRecord {
  FormularioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "aniversario" field.
  String? _aniversario;
  String get aniversario => _aniversario ?? '';
  bool hasAniversario() => _aniversario != null;

  // "Motivo_app" field.
  String? _motivoApp;
  String get motivoApp => _motivoApp ?? '';
  bool hasMotivoApp() => _motivoApp != null;

  // "Genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _aniversario = snapshotData['aniversario'] as String?;
    _motivoApp = snapshotData['Motivo_app'] as String?;
    _genero = snapshotData['Genero'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Formulario');

  static Stream<FormularioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormularioRecord.fromSnapshot(s));

  static Future<FormularioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormularioRecord.fromSnapshot(s));

  static FormularioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormularioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormularioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormularioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormularioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormularioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormularioRecordData({
  String? nome,
  String? aniversario,
  String? motivoApp,
  String? genero,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'aniversario': aniversario,
      'Motivo_app': motivoApp,
      'Genero': genero,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormularioRecordDocumentEquality implements Equality<FormularioRecord> {
  const FormularioRecordDocumentEquality();

  @override
  bool equals(FormularioRecord? e1, FormularioRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.aniversario == e2?.aniversario &&
        e1?.motivoApp == e2?.motivoApp &&
        e1?.genero == e2?.genero;
  }

  @override
  int hash(FormularioRecord? e) => const ListEquality()
      .hash([e?.nome, e?.aniversario, e?.motivoApp, e?.genero]);

  @override
  bool isValidKey(Object? o) => o is FormularioRecord;
}
