import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _favorite = (await secureStorage.getStringList('ff_favorite'))
            ?.map((path) => path.ref)
            .toList() ??
        _favorite;
    _cart = (await secureStorage.getStringList('ff_cart'))
            ?.map((path) => path.ref)
            .toList() ??
        _cart;
    _cartsum = await secureStorage.getDouble('ff_cartsum') ?? _cartsum;
    _color = await secureStorage.getString('ff_color') ?? _color;
  }

  late FlutterSecureStorage secureStorage;

  List<DocumentReference> _favorite = [];
  List<DocumentReference> get favorite => _favorite;
  set favorite(List<DocumentReference> _value) {
    _favorite = _value;
    secureStorage.setStringList(
        'ff_favorite', _value.map((x) => x.path).toList());
  }

  void deleteFavorite() {
    secureStorage.delete(key: 'ff_favorite');
  }

  void addToFavorite(DocumentReference _value) {
    _favorite.add(_value);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void removeFromFavorite(DocumentReference _value) {
    _favorite.remove(_value);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> _value) {
    _cart = _value;
    secureStorage.setStringList('ff_cart', _value.map((x) => x.path).toList());
  }

  void deleteCart() {
    secureStorage.delete(key: 'ff_cart');
  }

  void addToCart(DocumentReference _value) {
    _cart.add(_value);
    secureStorage.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void removeFromCart(DocumentReference _value) {
    _cart.remove(_value);
    secureStorage.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  double _cartsum = 0;
  double get cartsum => _cartsum;
  set cartsum(double _value) {
    _cartsum = _value;
    secureStorage.setDouble('ff_cartsum', _value);
  }

  void deleteCartsum() {
    secureStorage.delete(key: 'ff_cartsum');
  }

  int size = 0;

  String _color = '';
  String get color => _color;
  set color(String _value) {
    _color = _value;
    secureStorage.setString('ff_color', _value);
  }

  void deleteColor() {
    secureStorage.delete(key: 'ff_color');
  }

  bool searchonof = false;
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

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
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
