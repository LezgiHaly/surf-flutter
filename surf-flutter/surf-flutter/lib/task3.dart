import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/my_card.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Mycard(),
        ),
      ],
    );
  }
}