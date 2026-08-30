import 'package:flutter/material.dart';
import 'user_model.dart';

void main() {
  Map<String, dynamic> jsonResponse = {
    'name': 'Budi Santoso',
    'age': 22,
  };

  UserModel user = UserModel.fromJson(jsonResponse);

  print('Nama: ${user.name}');
  print('ID: ${user.id}');
  print('Status: ${user.isActive}');
  print('To JSON: ${user.toJson()}');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pertemuan 1'),
        ),
        body: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}