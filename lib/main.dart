// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:app/pages/counter.dart';
import 'package:app/pages/greet.dart';
import 'package:app/pages/user_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserList(),
    );
  }
}
