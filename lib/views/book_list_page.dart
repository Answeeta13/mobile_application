import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/book_club_cubit.dart';
import '../cubit/book_club_state.dart';
import '../widgets/book_cover_card.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({
    super.key,
    required this.state,
  });

  final BookListState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFCEFFD),
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Color(0xFF2B2430)),
        ),
        title: const Text(
          'Book Club Home',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Color(0xFF2B2430),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle_outlined, color: Color(0xFF2B2430)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sort by',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                ChoiceChip(
                  label: const Text('Author'),
                  selected: state.sortBy == BookSort.author,
                  onSelected: (_) => context.read<BookClubCubit>().sortBooks(BookSort.author),
                  selectedColor: const Color(0xFFE5DCEB),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Color(0xFFD7CBDD)),
                  ),
                ),
                const SizedBox(width: 12),
                ChoiceChip(
                  label: const Text('Title'),
                  selected: state.sortBy == BookSort.title,
                  onSelected: (_) => context.read<BookClubCubit>().sortBooks(BookSort.title),
                  selectedColor: const Color(0xFFE5DCEB),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Color(0xFFD7CBDD)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Books',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 28,
                    color: const Color(0xFF1F1723),
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 220,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                separatorBuilder: (_, __) => const SizedBox(width: 14),
                itemBuilder: (context, index) {
                  final book = state.books[index];
                  return BookCoverCard(
                    book: book,
                    onTap: () => context.read<BookClubCubit>().showBookDetails(book),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
