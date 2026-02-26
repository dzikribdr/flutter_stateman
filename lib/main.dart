import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/counter_model.dart';
import 'views/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => CounterModel(), child: const MyApp()),
  );
}
