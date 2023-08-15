import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _nrOfPlatWater = 0;
  int get nrOfPlatWater => _nrOfPlatWater;
  set nrOfPlatWater(int _value) {
    _nrOfPlatWater = _value;
  }

  int _nrOfBruisWater = 0;
  int get nrOfBruisWater => _nrOfBruisWater;
  set nrOfBruisWater(int _value) {
    _nrOfBruisWater = _value;
  }

  int _nrOfLimonade = 0;
  int get nrOfLimonade => _nrOfLimonade;
  set nrOfLimonade(int _value) {
    _nrOfLimonade = _value;
  }

  int _nrOfCocaCola = 0;
  int get nrOfCocaCola => _nrOfCocaCola;
  set nrOfCocaCola(int _value) {
    _nrOfCocaCola = _value;
  }

  int _nrOfCocaColaZero = 0;
  int get nrOfCocaColaZero => _nrOfCocaColaZero;
  set nrOfCocaColaZero(int _value) {
    _nrOfCocaColaZero = _value;
  }

  int _nrOfAquariusRood = 0;
  int get nrOfAquariusRood => _nrOfAquariusRood;
  set nrOfAquariusRood(int _value) {
    _nrOfAquariusRood = _value;
  }

  int _nrOfAquariusGeel = 0;
  int get nrOfAquariusGeel => _nrOfAquariusGeel;
  set nrOfAquariusGeel(int _value) {
    _nrOfAquariusGeel = _value;
  }

  int _nrOfAquariusWit = 0;
  int get nrOfAquariusWit => _nrOfAquariusWit;
  set nrOfAquariusWit(int _value) {
    _nrOfAquariusWit = _value;
  }

  int _nrOfJupiler = 0;
  int get nrOfJupiler => _nrOfJupiler;
  set nrOfJupiler(int _value) {
    _nrOfJupiler = _value;
  }

  int _nrOfJupiler00 = 0;
  int get nrOfJupiler00 => _nrOfJupiler00;
  set nrOfJupiler00(int _value) {
    _nrOfJupiler00 = _value;
  }

  int _nrOfKriek = 0;
  int get nrOfKriek => _nrOfKriek;
  set nrOfKriek(int _value) {
    _nrOfKriek = _value;
  }

  int _nrOfMalheur = 0;
  int get nrOfMalheur => _nrOfMalheur;
  set nrOfMalheur(int _value) {
    _nrOfMalheur = _value;
  }

  int _nrOfDuvel = 0;
  int get nrOfDuvel => _nrOfDuvel;
  set nrOfDuvel(int _value) {
    _nrOfDuvel = _value;
  }

  int _nrOfKarmeliet = 0;
  int get nrOfKarmeliet => _nrOfKarmeliet;
  set nrOfKarmeliet(int _value) {
    _nrOfKarmeliet = _value;
  }

  int _nrOfChimay = 0;
  int get nrOfChimay => _nrOfChimay;
  set nrOfChimay(int _value) {
    _nrOfChimay = _value;
  }

  int _nrOfCornet = 0;
  int get nrOfCornet => _nrOfCornet;
  set nrOfCornet(int _value) {
    _nrOfCornet = _value;
  }

  int _nrOfGlasCava = 0;
  int get nrOfGlasCava => _nrOfGlasCava;
  set nrOfGlasCava(int _value) {
    _nrOfGlasCava = _value;
  }

  int _nrOfGlasWijnWit = 0;
  int get nrOfGlasWijnWit => _nrOfGlasWijnWit;
  set nrOfGlasWijnWit(int _value) {
    _nrOfGlasWijnWit = _value;
  }

  int _nrOfGlasWijnRood = 0;
  int get nrOfGlasWijnRood => _nrOfGlasWijnRood;
  set nrOfGlasWijnRood(int _value) {
    _nrOfGlasWijnRood = _value;
  }

  int _nrOfGlasWijnRose = 0;
  int get nrOfGlasWijnRose => _nrOfGlasWijnRose;
  set nrOfGlasWijnRose(int _value) {
    _nrOfGlasWijnRose = _value;
  }

  int _nrOfFlesWijnWit = 0;
  int get nrOfFlesWijnWit => _nrOfFlesWijnWit;
  set nrOfFlesWijnWit(int _value) {
    _nrOfFlesWijnWit = _value;
  }

  int _nrOfFlesWijnRood = 0;
  int get nrOfFlesWijnRood => _nrOfFlesWijnRood;
  set nrOfFlesWijnRood(int _value) {
    _nrOfFlesWijnRood = _value;
  }

  int _nrOfFlesWijnRose = 0;
  int get nrOfFlesWijnRose => _nrOfFlesWijnRose;
  set nrOfFlesWijnRose(int _value) {
    _nrOfFlesWijnRose = _value;
  }

  int _nrOfFlesCava = 0;
  int get nrOfFlesCava => _nrOfFlesCava;
  set nrOfFlesCava(int _value) {
    _nrOfFlesCava = _value;
  }

  int _nrOfKoffie = 0;
  int get nrOfKoffie => _nrOfKoffie;
  set nrOfKoffie(int _value) {
    _nrOfKoffie = _value;
  }

  int _nrOfThee = 0;
  int get nrOfThee => _nrOfThee;
  set nrOfThee(int _value) {
    _nrOfThee = _value;
  }

  int _nrOfSoep = 0;
  int get nrOfSoep => _nrOfSoep;
  set nrOfSoep(int _value) {
    _nrOfSoep = _value;
  }

  int _nrOfChips = 0;
  int get nrOfChips => _nrOfChips;
  set nrOfChips(int _value) {
    _nrOfChips = _value;
  }

  int _nrOfIceTea = 0;
  int get nrOfIceTea => _nrOfIceTea;
  set nrOfIceTea(int _value) {
    _nrOfIceTea = _value;
  }

  int _nrOfBonnen = 0;
  int get nrOfBonnen => _nrOfBonnen;
  set nrOfBonnen(int _value) {
    _nrOfBonnen = _value;
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
