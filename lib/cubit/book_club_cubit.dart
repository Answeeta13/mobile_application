import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/book.dart';
import 'book_club_state.dart';

class BookClubCubit extends Cubit<BookClubState> {
  BookClubCubit() : super(const BookClubLoading());

  final List<Book> _books = [];
  BookSort _sortBy = BookSort.author;

  void init() {
    emit(const BookClubLoading());
    _books
      ..clear()
      ..addAll(_initialBooks());
    _emitBookList();
  }

  void sortBooks(BookSort sortBy) {
    _sortBy = sortBy;
    emit(const BookClubLoading());
    _emitBookList();
  }

  void showBookDetails(Book book) {
    emit(
      BookDetailState(
        books: _sortedBooks(),
        selectedBook: book,
        sortBy: _sortBy,
      ),
    );
  }

  void showBookList() {
    emit(const BookClubLoading());
    _emitBookList();
  }

  void _emitBookList() {
    emit(
      BookListState(
        books: _sortedBooks(),
        sortBy: _sortBy,
      ),
    );
  }

  List<Book> _sortedBooks() {
    final books = List<Book>.from(_books);

    if (_sortBy == BookSort.author) {
      books.sort((a, b) => a.author.toLowerCase().compareTo(b.author.toLowerCase()));
    } else {
      books.sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
    }

    return books;
  }

  List<Book> _initialBooks() {
    return const [
      Book(
        id: 'book_1',
        title: 'Carmer and Grit: The Wingsnatchers',
        author: 'Sarah Jean Horwitz',
        description:
            'Carmer and Grit are drawn into a strange world full of secrets, danger, and magical creatures. This opening adventure brings mystery, courage, and friendship together in a fantasy story that immediately stands out on the shelf.',
        imageAsset: 'assets/covers/Book1.png',
      ),
      Book(
        id: 'book_2',
        title: 'Little Gods',
        author: 'Meng Jin',
        description:
            'Little Gods explores identity, family, and the long shadow of the past. It follows characters whose lives are shaped by ambition, memory, and the difficult truths they inherit across generations.',
        imageAsset: 'assets/covers/Book2.png',
      ),
      Book(
        id: 'book_3',
        title: 'A Clockwork Orange',
        author: 'Anthony Burgess',
        description:
            'A Clockwork Orange is a bold and unsettling classic about free will, violence, and control. Its distinctive voice and unforgettable imagery make it one of the most recognizable novels in modern literature.',
        imageAsset: 'assets/covers/Book3.png',
      ),
      Book(
        id: 'book_4',
        title: 'Memory',
        author: 'Angelina Aludo',
        description:
            'Memory centers on loss, mystery, and the struggle to rebuild what has been forgotten. The story uses atmosphere and suspense to reveal how fragile and powerful personal history can be.',
        imageAsset: 'assets/covers/Book4.png',
      ),
      Book(
        id: 'book_5',
        title: 'James and the Giant Peach',
        author: 'Roald Dahl',
        description:
            'James and the Giant Peach is a beloved adventure about imagination, bravery, and unexpected friendship. The story follows James on a fantastical journey that feels playful, warm, and timeless.',
        imageAsset: 'assets/covers/Book5.png',
      ),
      Book(
        id: 'book_6',
        title: 'The Big Deal',
        author: 'Hisham Al Gurg',
        description:
            'The Big Deal presents a business-focused perspective on reducing sales stress and building stronger deal-making habits. It combines practical ideas with a direct, memorable visual style.',
        imageAsset: 'assets/covers/Book6.png',
      ),
      Book(
        id: 'book_7',
        title: 'Don\'t Look Back',
        author: 'Isaac Nelson',
        description:
            'Don\'t Look Back is a thriller-driven story designed to feel tense from the very first glance. The cover and title set the tone for a suspenseful read built around danger, fear, and unanswered questions.',
        imageAsset: 'assets/covers/Book7.png',
      ),
    ];
  }
}
