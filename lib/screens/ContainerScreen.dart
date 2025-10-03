import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  final int counter;
  const ContainerScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Экран 4: Container", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text("Счётчик: $counter"),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Text("Container с фоном и рамкой", style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.orange,
            child: const Text("Просто цветной Container"),
          ),
        ],
      ),
    );
  }
}
