import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  final int counter;
  const TextScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Экран 2: Демонстрация Text", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text("Счётчик сейчас равен: $counter", style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 16),
          const Text("Это обычный текст."),
          const SizedBox(height: 16),
          const Text("Text с выравниванием:", textAlign: TextAlign.left),
          const SizedBox(height: 16),
          const Text("Стильный текст", style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
