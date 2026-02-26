import 'package:flutter/material.dart';
import '../models/counter_model.dart';

class CounterProvider extends ChangeNotifier {
  final CounterModel _counter = CounterModel();

  int get counter => _counter.value;

  void increment() {
    _counter.value++;
    notifyListeners();
  }

  void decrement() {
    if (_counter.value > 0) {
      _counter.value--;
      notifyListeners();
    }
  }
}
