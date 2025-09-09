import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Form1Record extends FirestoreRecord {
  Form1Record._(
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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _aniversario = snapshotData['aniversario'] as String?;
    _motivoApp = snapshotData['Motivo_app'] as String?;
    _genero = snapshotData['Genero'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('form1')
          : FirebaseFirestore.instance.collectionGroup('form1');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('form1').doc(id);

  static Stream<Form1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Form1Record.fromSnapshot(s));

  static Future<Form1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Form1Record.fromSnapshot(s));

  static Form1Record fromSnapshot(DocumentSnapshot snapshot) => Form1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Form1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Form1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Form1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Form1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createForm1RecordData({
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

class Form1RecordDocumentEquality implements Equality<Form1Record> {
  const Form1RecordDocumentEquality();

  @override
  bool equals(Form1Record? e1, Form1Record? e2) {
    return e1?.nome == e2?.nome &&
        e1?.aniversario == e2?.aniversario &&
        e1?.motivoApp == e2?.motivoApp &&
        e1?.genero == e2?.genero;
  }

  @override
  int hash(Form1Record? e) => const ListEquality()
      .hash([e?.nome, e?.aniversario, e?.motivoApp, e?.genero]);

  @override
  bool isValidKey(Object? o) => o is Form1Record;
}
