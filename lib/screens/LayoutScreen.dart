import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  final int counter;
  const LayoutScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text("Экран 3: Column и Row", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        Text("Счётчик: $counter"),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.star, color: Colors.amber),
            Icon(Icons.star_half, color: Colors.amber),
            Icon(Icons.star_border),
          ],
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text("Здесь показано использование Row и Padding"),
        ),
      ],
    );
  }
}
