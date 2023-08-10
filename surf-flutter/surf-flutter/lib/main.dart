import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/task3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Task3(),
        ),
      ),
    );
  }
}
