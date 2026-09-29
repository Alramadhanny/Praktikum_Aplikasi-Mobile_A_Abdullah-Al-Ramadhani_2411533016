import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_transaction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker - Modul 3',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AddTransactionScreen(),
    );
  }
}
