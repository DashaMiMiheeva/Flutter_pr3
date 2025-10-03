import 'package:flutter/material.dart';
import 'screens/MainScreen.dart';
import 'screens/TextScreen.dart';
import 'screens/LayoutScreen.dart';
import 'screens/ContainerScreen.dart';
import 'screens/InteractiveScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практическая работа №3',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() => _counter++);
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(onIncrement: _incrementCounter, counter: _counter),
      TextScreen(counter: _counter),
      LayoutScreen(counter: _counter),
      ContainerScreen(counter: _counter),
      InteractiveScreen(counter: _counter),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Практическая №3 — экран ${_currentIndex + 1}'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Center(child: Text('Счётчик: $_counter')),
          )
        ],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главный"),
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: "Text"),
          BottomNavigationBarItem(icon: Icon(Icons.view_column), label: "Layout"),
          BottomNavigationBarItem(icon: Icon(Icons.crop_square), label: "Container"),
          BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: "Interactive"),
        ],
      ),
    );
  }
}
