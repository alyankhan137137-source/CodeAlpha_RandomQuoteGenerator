import 'package:flutter/material.dart';
import 'screens/quote_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote of the Day',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6750A4),
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
            color: Color(0xFF1D1B20),
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Color(0xFF49454F),
            height: 1.5,
          ),
        ),
      ),
      home: const QuoteScreen(),
    );
  }
}
