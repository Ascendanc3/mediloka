import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences prefs;

  List<String> asalKota = [
    '\tKota Manado',
    'Kota Tomohon',
    '\tKota Kotamobagu',
    'Kota Bitung',
    'Kabupaten Minahasa Utara',
    'Kabupaten Minahasa Tenggara',
    '\tKabupaten Minahasa Selatan',
    'Kabupaten Minahasa',
    '\tKabupaten Kepulauan Talaud',
    'Kabupaten Kepulauan Siau Tagulandang Biaro',
    'Kabupaten Kepulauan Sangihe',
    'Kabupaten Bolaang Mongondow Utara',
    'Kabupaten Bolaang Mongondow Timur',
    'Kabupaten Bolaang Mongondow Selatan',
    '\tKabupaten Bolaang Mongondow'
  ];
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
