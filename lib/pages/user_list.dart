import 'dart:convert';

import 'package:app/components/user_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users'),
      );
      if (response.statusCode == 200) {
        setState(() {
          users = jsonDecode(response.body);
        });
      } else {
        throw Exception("fetching users failed");
      }
    } catch (e) {
      debugPrint('$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
      ),
      body:
          users.isEmpty
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Fetching Users...'),
                    SizedBox(height: 20),
                    // CircularProgressIndicator(color: Colors.blue.shade400),
                  ],
                ),
              )
              : ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return UserCard(
                    name: users[index]['name'],
                    email: users[index]['email'],
                    phone: users[index]['phone'],
                  );
                },
              ),
    );
  }
}
