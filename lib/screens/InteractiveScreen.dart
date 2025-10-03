import 'package:flutter/material.dart';

class InteractiveScreen extends StatefulWidget {
  final int counter;
  const InteractiveScreen({super.key, required this.counter});

  @override
  State<InteractiveScreen> createState() => _InteractiveScreenState();
}

class _InteractiveScreenState extends State<InteractiveScreen> {
  bool switched = false;
  double sliderValue = 0.5;
  String dropdownValue = "Опция 1";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Экран 5: Интерактивные элементы", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text("Счётчик: ${widget.counter}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Switch: "),
              Switch(value: switched, onChanged: (v) => setState(() => switched = v)),
            ],
          ),
          Slider(value: sliderValue, onChanged: (v) => setState(() => sliderValue = v)),
          DropdownButton<String>(
            value: dropdownValue,
            items: ["Опция 1", "Опция 2", "Опция 3"]
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (v) => setState(() => dropdownValue = v!),
          ),
          GestureDetector(
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Нажали на контейнер"))),
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey[300],
              child: const Text("Нажми на меня"),
            ),
          ),
        ],
      ),
    );
  }
}
