import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home_page2.dart';
import 'home_page3.dart';
import 'home_page4.dart';
import 'home_page5.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage5(),
    );
  }
}
