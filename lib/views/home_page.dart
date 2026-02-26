import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, counter, _) {
        return Scaffold(
          appBar: AppBar(title: const Text("Counter App")),
          body: Center(
            child: Text(
              '${counter.counter}',
              style: const TextStyle(fontSize: 40),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => counter.increment(),
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
