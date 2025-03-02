import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have clicked these many times:'),
            Text(count.toString(), style: TextStyle(fontSize: 40),),
            ElevatedButton(onPressed: increment, child: Text('click me')),
          ],
        )
      ),
    );
  }
}