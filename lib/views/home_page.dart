import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("State Management"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Nilai Counter:", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text(
              counter.value.toString(),
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: counter.decrement,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: counter.increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: counter.reset,
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
