import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _timespentsellerpage = 0.0;
  double get timespentsellerpage => _timespentsellerpage;
  set timespentsellerpage(double value) {
    _timespentsellerpage = value;
  }
}
