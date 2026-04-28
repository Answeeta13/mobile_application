import 'package:flutter/material.dart';

import '../models/book.dart';

class BookDetailContent extends StatelessWidget {
  const BookDetailContent({
    super.key,
    required this.book,
  });

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                book.imageAsset,
                width: 210,
                height: 320,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            book.title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            book.author,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: const Color(0xFF666666),
                ),
          ),
          const SizedBox(height: 18),
          Text(
            book.description,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                  color: const Color(0xFF555555),
                ),
          ),
        ],
      ),
    );
  }
}
