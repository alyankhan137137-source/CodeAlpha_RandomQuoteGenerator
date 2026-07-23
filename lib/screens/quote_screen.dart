import 'dart:math';
import 'package:flutter/material.dart';
import '../data/quote_data.dart';
import '../models/quote.dart';
import '../widgets/quote_display.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  late Quote _currentQuote;

  @override
  void initState() {
    super.initState();
    _generateRandomQuote();
  }

  void _generateRandomQuote() {
    setState(() {
      _currentQuote = quotes[Random().nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.surface,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuoteDisplay(quote: _currentQuote),
            const SizedBox(height: 60),
            ElevatedButton.icon(
              onPressed: _generateRandomQuote,
              icon: const Icon(Icons.refresh),
              label: const Text(
                "New Quote",
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
