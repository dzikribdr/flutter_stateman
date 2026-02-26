import 'package:flutter/material.dart';
import '../models/counter_model.dart';

class CounterProvider extends ChangeNotifier {
  final CounterModel _model = CounterModel();

  int get value => _model.counter;

  void increment() {
    _model.increment();
    notifyListeners();
  }

  void decrement() {
    _model.decrement();
    notifyListeners();
  }

  void reset() {
    _model.reset();
    notifyListeners();
  }
}
