import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
   return  const MaterialApp(
    home: Task2 ());
  }
}

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {

var rotationValue = 90.0;
var colors =Colors.amber;

  var top = 100.0;
  
  var left = 100.0;
  
  


void _onLongPress() {
    setState(() {
      rotationValue += 200;
    });
  }

// и все же я не совсем понял про позиционирование 
  void _onPanUpdate(DragUpdateDetails details) {
    top = top + details.delta.dy;
    left = left + details.delta.dx;
   
  }

  void _onTap() {
    setState(() {
      colors = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });

  }
 

  @override
  Widget build(BuildContext context) {
    
    
    return Stack(
    children: [
        Positioned(
          top: top,
          left: left,
          
          child: 
        RotationTransition(
              turns: AlwaysStoppedAnimation(rotationValue / 360),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 50,
                height: 50,
                color: colors,
              ),
            ),
            ), 
        Positioned.fill(
           child: GestureDetector(
              onTap: _onTap,
              onLongPress: _onLongPress,
              onPanUpdate: _onPanUpdate,
            ),
        ),
    ],
);
  }

  
}