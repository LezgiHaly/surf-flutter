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

class _Task2State extends State<Task2> with TickerProviderStateMixin {

late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  );

bool selected = false;
bool animation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Stack(children: [
     GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      onLongPress: () {
        setState(() {
          animation = !animation;
        });
      },
      child: 
      Align(alignment:
        selected ? Alignment.center : AlignmentDirectional.centerStart,
        child: 
        animation ?
        RotationTransition(
          turns: _animation,
          child: AnimatedContainer(
            width: selected ? 100.0 : 100.0,
            height: selected ? 200.0 : 100.0,
            color: selected ? Colors.red : Colors.blue,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
          ),
        ) : AnimatedContainer(
            width: selected ? 100.0 : 100.0,
            height: selected ? 200.0 : 100.0,
            color: selected ? Colors.red : Colors.blue,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
          ),
      ),
    )
        ],
        ),
        );
  }
}