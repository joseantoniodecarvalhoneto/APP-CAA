import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _foto = await secureStorage.getString('ff_foto') ?? _foto;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _buffer = '';
  String get buffer => _buffer;
  set buffer(String value) {
    _buffer = value;
  }

  List<String> _displaymensage = [];
  List<String> get displaymensage => _displaymensage;
  set displaymensage(List<String> value) {
    _displaymensage = value;
  }

  void addToDisplaymensage(String value) {
    displaymensage.add(value);
  }

  void removeFromDisplaymensage(String value) {
    displaymensage.remove(value);
  }

  void removeAtIndexFromDisplaymensage(int index) {
    displaymensage.removeAt(index);
  }

  void updateDisplaymensageAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    displaymensage[index] = updateFn(_displaymensage[index]);
  }

  void insertAtIndexInDisplaymensage(int index, String value) {
    displaymensage.insert(index, value);
  }

  String _Historico = '';
  String get Historico => _Historico;
  set Historico(String value) {
    _Historico = value;
  }

  String _foto = 'https://www.nutriexperto.com/images/avatars/invitado.jpg';
  String get foto => _foto;
  set foto(String value) {
    _foto = value;
    secureStorage.setString('ff_foto', value);
  }

  void deleteFoto() {
    secureStorage.delete(key: 'ff_foto');
  }

  int _contador = 0;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  DateTime? _dataC2;
  DateTime? get dataC2 => _dataC2;
  set dataC2(DateTime? value) {
    _dataC2 = value;
  }

  String _palavraTemas = '';
  String get palavraTemas => _palavraTemas;
  set palavraTemas(String value) {
    _palavraTemas = value;
  }
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
