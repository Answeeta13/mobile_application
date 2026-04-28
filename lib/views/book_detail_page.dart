import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/book_club_cubit.dart';
import '../cubit/book_club_state.dart';
import '../widgets/book_detail_content.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({
    super.key,
    required this.state,
  });

  final BookDetailState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFCEFFD),
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.read<BookClubCubit>().showBookList(),
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2B2430)),
        ),
        title: const Text(
          'Book Detail',
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
      body: BookDetailContent(book: state.selectedBook),
    );
  }
}
