import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onIncrement;
  final int counter;

  const HomeScreen({super.key, required this.onIncrement, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Главный экран", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text("Счётчик: $counter", style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onIncrement,
            child: const Text("Увеличить счётчик"),
          ),
          const SizedBox(height: 20),
          const Text("Здесь основная логика — изменение счётчика"),
        ],
      ),
    );
  }
}
