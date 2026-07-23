import 'package:flutter/material.dart';
import '../models/quote.dart';

class QuoteDisplay extends StatelessWidget {
  final Quote quote;

  const QuoteDisplay({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.format_quote_rounded,
          size: 80,
          color: Colors.deepPurple,
        ),
        const SizedBox(height: 20),
        Text(
          quote.text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "- ${quote.author}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
