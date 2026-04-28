import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/book_club_cubit.dart';
import 'cubit/book_club_state.dart';
import 'views/book_detail_page.dart';
import 'views/book_list_page.dart';

void main() {
  runApp(const BookClubRoot());
}

class BookClubRoot extends StatelessWidget {
  const BookClubRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BookClubCubit()..init(),
      child: const BookClubApp(),
    );
  }
}

class BookClubApp extends StatelessWidget {
  const BookClubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Club App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFDCCEEA),
          primary: const Color(0xFFDCCEEA),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const BookClubFlow(),
    );
  }
}

class BookClubFlow extends StatelessWidget {
  const BookClubFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookClubCubit, BookClubState>(
      builder: (context, state) {
        Widget child;

        if (state is BookListState) {
          child = BookListPage(
            key: ValueKey('list-${state.sortBy.name}'),
            state: state,
          );
        } else if (state is BookDetailState) {
          child = BookDetailPage(
            key: ValueKey('detail-${state.selectedBook.id}-${state.sortBy.name}'),
            state: state,
          );
        } else {
          child = const _LoadingView(key: ValueKey('loading'));
        }

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation) {
            final slideAnimation = Tween<Offset>(
              begin: const Offset(0.08, 0),
              end: Offset.zero,
            ).animate(animation);

            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: slideAnimation,
                child: child,
              ),
            );
          },
          child: child,
        );
      },
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
