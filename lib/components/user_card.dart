import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {

  final String name;
  final String email;
  final String phone;
  
  const UserCard({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('Email: $email'),
              Text('Phone: $phone'),
            ],
          ),
        ),
      ),
    );
  }
}