import 'package:flutter/material.dart';

void main() {
  runApp(const SurfApp());
}

class SurfApp extends StatelessWidget {
  const SurfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageStateful(title: 'Stateful page'),
    );
  }
}

class HomePageStateful extends StatefulWidget {
  final String title;

  const HomePageStateful({required this.title, Key? key}) : super(key: key);

  @override
  State<HomePageStateful> createState() => _HomePageStatefulState();
}

class _HomePageStatefulState extends State<HomePageStateful> {
  int _counter = 0;
  int _decrement = 0;
   int _increment = 0;
  

 void _incrementCounter() {
  // print('new value: $_counter');
  setState(() {
    _counter += 1;
    _increment += 1;
  });
}

void _decrementCounter() {
  // print(' value: $_counter');
  setState(() {
    _counter -= 1;
    _decrement += 1;

  });
}
  @override
  Widget build(BuildContext context) {
    // print('build() method called');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            
            _counter >= 0 ? 
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ) :  Text(
              'Значение не может быть меньше 0',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ),  
                        Text(
              '$_increment increment',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ), 
            Text(
              '$_decrement decrement',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ), 
            const SizedBox(height: 25),          
            ElevatedButton(onPressed: _decrementCounter,
            child: const Icon(Icons.remove),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}