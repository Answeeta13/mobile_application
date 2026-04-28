import '../models/book.dart';

enum BookSort { author, title }

abstract class BookClubState {
  const BookClubState();
}

class BookClubLoading extends BookClubState {
  const BookClubLoading();
}

class BookListState extends BookClubState {
  const BookListState({
    required this.books,
    required this.sortBy,
  });

  final List<Book> books;
  final BookSort sortBy;
}

class BookDetailState extends BookClubState {
  const BookDetailState({
    required this.books,
    required this.selectedBook,
    required this.sortBy,
  });

  final List<Book> books;
  final Book selectedBook;
  final BookSort sortBy;
}
