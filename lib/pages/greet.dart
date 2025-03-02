import 'package:flutter/material.dart';

class Greet extends StatefulWidget {
  const Greet({super.key});

  @override
  State<Greet> createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  String greeting = "";
  TextEditingController myController = TextEditingController();

  void greetUser() {
    setState(() {
      greeting = "Welcome! ${myController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: myController,
                decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Enter your Name"),
                style: TextStyle(fontSize: 20),
              ),

              ElevatedButton(
                onPressed: greetUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.white,
                ),
                child: Text('Greet'),
              ),

              Text(
                greeting,
                style: TextStyle(fontSize: 40, color: Colors.blue[400]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
