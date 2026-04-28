# Book Club App Homework

This project implements the full **Book Club App** homework in Flutter using a **Cubit** from `flutter_bloc`.

## Homework requirements covered

- `Book` class with the required fields: image, title, author, description
- `Cubit` created for the Home Page flow
- Book list starts empty inside the cubit
- `init()` fills the list of books
- Widget 1: displays a book image
- Widget 2: displays book image, title, author, and description
- Default home page sorting is **by author**
- Tapping **Title** sorts the same list view by title
- Tapping a book opens the detail page
- Detail page back button calls a cubit function and returns to the list view
- State rebuild issue handled by:
  - not using `Equatable`
  - emitting a short loading state before refreshed list/detail states

## Project structure

- `lib/main.dart` - app entry point and BlocProvider
- `lib/models/book.dart` - book data model
- `lib/cubit/book_club_cubit.dart` - Cubit logic and seeded data
- `lib/cubit/book_club_state.dart` - loading, list, and detail states
- `lib/views/book_list_page.dart` - list UI with sort buttons
- `lib/views/book_detail_page.dart` - detail UI with AppBar back button
- `lib/widgets/book_cover_card.dart` - widget for only the cover image
- `lib/widgets/book_detail_content.dart` - widget for image + title + author + description
- `assets/covers/` - all provided book images

## How to run this in VS Code

1. Install the **Flutter SDK** on your computer.
2. Install the **Flutter** and **Dart** extensions in VS Code.
3. Open this folder in VS Code:
   - `/Users/answeetapereira/Downloads/mobile application `
4. Open the VS Code terminal in this folder.
5. If this is the first time and platform folders are missing, run:

```bash
flutter create .
```

6. Get the packages:

```bash
flutter pub get
```

7. Start an Android emulator or connect a physical device.
8. Run the app using one of these:

```bash
flutter run
```

or press `F5` in VS Code.

## Notes

- The Flutter SDK is not installed in the current workspace shell, so I could not run `flutter pub get` or launch the app from here.
- The complete app source code is included and ready for you to open in VS Code.
