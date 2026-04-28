# Book Club App Homework

This project implements the full **Book Club App** homework in Flutter using a **Cubit** from `flutter_bloc`.

The app follows the required Book Club App flow:

- Home page shows a list of books
- Books are sorted by **Author** by default
- User can sort the same book list by **Title**
- User can tap a book to open the detail page
- Detail page shows the selected book information
- Back button returns the user to the book list page

This project can be run as a **Flutter Web app on Chrome**.  
The design is mobile-style, so it is best viewed using Chrome mobile responsive mode.  
The book list is horizontally scrollable, so users can scroll left and right to view all books.

---

## Homework Requirements Covered

This project covers the required homework tasks:

- Created a `Book` class with the required fields:
  - image
  - title
  - author
  - description

- Created a `Cubit` for the Home Page flow.

- Created a list of books that starts empty inside the Cubit.

- Filled the book list inside the Cubit's `init()` function.

- Created Widget 1:
  - displays only the book image

- Created Widget 2:
  - displays the book image
  - displays the book title
  - displays the book author
  - displays the book description

- Built the transition from the book list page to the book detail page.

- Implemented filtering/sorting:
  - default sorting is by author
  - tapping **Title** sorts the same list view by title
  - tapping **Author** sorts the same list view by author again

- Implemented the book detail page.

- Added a leading back button to the AppBar of the book detail page.

- Connected the back button to a Cubit function so that it emits the state where the list of books is visible again.

- Handled state rebuilding by:
  - not using `Equatable`
  - emitting a short loading state before refreshed list/detail states

---

## Web Version Note

This app was tested using **Flutter Web on Chrome**.

Since the Figma design is mobile-style, the app looks best when Chrome is placed in mobile responsive mode.

To view it like a phone screen:

1. Run the app on Chrome.
2. Open Chrome DevTools.
3. Turn on the device toolbar.
4. Select an iPhone/mobile screen size.

The home page uses a horizontally scrollable book list, so users can scroll sideways to view all book covers.

---

## Project Structure

```text
lib/
├── main.dart
├── models/
│   └── book.dart
├── cubit/
│   ├── book_club_cubit.dart
│   └── book_club_state.dart
├── views/
│   ├── book_list_page.dart
│   └── book_detail_page.dart
└── widgets/
    ├── book_cover_card.dart
    └── book_detail_content.dart

assets/
└── covers/
    ├── Book1.png
    ├── Book2.png
    ├── Book3.png
    ├── Book4.png
    ├── Book5.png
    ├── Book6.png
    └── Book7.png
```

---

## Main Files Explanation

### `lib/main.dart`

This is the entry point of the Flutter app.

It sets up the `BlocProvider`, creates the `BookClubCubit`, and calls `init()` to load the initial book list.

---

### `lib/models/book.dart`

This file contains the `Book` model.

Each book has:

- image path
- title
- author
- description

---

### `lib/cubit/book_club_cubit.dart`

This file contains the main Cubit logic.

It handles:

- creating the empty book list
- filling the book list inside `init()`
- sorting books by author
- sorting books by title
- showing the book list page
- showing the selected book detail page
- returning from the detail page to the book list page

---

### `lib/cubit/book_club_state.dart`

This file contains the Cubit states.

The app uses states for:

- loading
- book list view
- book detail view

---

### `lib/views/book_list_page.dart`

This file contains the home/list screen.

It displays:

- app bar
- sorting buttons for Author and Title
- horizontally scrollable book covers

---

### `lib/views/book_detail_page.dart`

This file contains the book detail screen.

It displays:

- app bar with back button
- selected book image
- selected book title
- selected book author
- selected book description

The back button calls a Cubit function to return to the book list page.

---

### `lib/widgets/book_cover_card.dart`

This widget displays only the book cover image.

It is used on the book list page.

---

### `lib/widgets/book_detail_content.dart`

This widget displays the selected book's full details:

- image
- title
- author
- description

It is used on the book detail page.

---

## How to Run the Project

### 1. Install Flutter

Make sure Flutter is installed on your computer.

Check Flutter installation using:

```bash
flutter doctor
```

---

### 2. Open the Project

Open this project folder in VS Code.

Make sure the folder contains:

```text
pubspec.yaml
lib/
assets/
```

---

### 3. Get Dependencies

Run this command:

```bash
flutter pub get
```

---

### 4. Run on Chrome/Web

Run this command:

```bash
flutter run -d chrome
```

This will launch the app in Chrome.

---

### 5. View in Mobile Responsive Mode

Since the app is designed like a mobile app, it is recommended to view it in mobile responsive mode.

In Chrome:

1. Press `Command + Option + I` to open DevTools.
2. Press `Command + Shift + M` to turn on device toolbar.
3. Select an iPhone/mobile screen size.
4. Refresh the page if needed.

---

## How to Test the App

After running the app:

1. The home page should show the book list.
2. The default sorting should be by **Author**.
3. Click **Title** to sort books alphabetically by title.
4. Click **Author** to sort books alphabetically by author again.
5. Scroll horizontally to view all book covers.
6. Click any book cover to open the detail page.
7. The detail page should show:
   - book image
   - book title
   - book author
   - book description
8. Click the back arrow in the AppBar.
9. The app should return to the book list page.

---
