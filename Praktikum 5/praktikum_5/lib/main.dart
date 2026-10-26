import 'package:flutter/material.dart';

import 'screens/add_transaction_screen.dart';
import 'screens/login_screen.dart';
import 'screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ExpenseTrackerApp());
}

class ExpenseTrackerApp extends StatelessWidget {
  const ExpenseTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    const amber = Color(0xFFFFC107);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker Final',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: amber,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F8F5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF8F8F5),
          foregroundColor: Color(0xFF222222),
          elevation: 0,
          centerTitle: false,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFE4E4E0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFE4E4E0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFFFB300), width: 1.8),
          ),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/': (context) => const MainScreen(),
        '/add': (context) => const AddTransactionScreen(),
      },
    );
  }
}
