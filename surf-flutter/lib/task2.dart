import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
   return  const MaterialApp(
    home: Task ());
  }
}

bool selected3 = false;
bool selected4 = false;
bool animation = false;


class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> with TickerProviderStateMixin {

late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  );
void _onTap () {
  setState(() {
    selected3 = !selected3;
  });
}
void _onLongPress () {
setState(() {
    animation = !animation;
  });
}
void _onPanUpdate (details) {
  setState(() {
    selected4 = !selected4;
  });

}
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned( 
          right: selected4 ? 100 : 0,
           top: selected4 ? 100 : 150, 
           bottom: selected4 ? 100 : 10,
           left: selected4 ? 100 : 50,
          child: 
          animation ?
          RotationTransition(
            turns: _animation,
            child: AnimatedContainer(
              color: selected3 ? Colors.red : Colors.blue,
              duration: const Duration(seconds: 2),
              curve: Curves.easeInBack,
            ),
          ) :         
          AnimatedContainer(
            color: selected3 ? Colors.red : Colors.blue,
            duration: const Duration(seconds: 2),
            curve: Curves.easeInBack,
          ),
          ),
        Positioned.fill(child: GestureDetector(
          onTap: _onTap,
          onLongPress: _onLongPress,
          onPanUpdate: _onPanUpdate,
        ),
        ),
      ],
    );
  }
}