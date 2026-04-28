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
## How to Run the Project

### 1. Install Flutter


Check Flutter installation using:

```bash
flutter doctor
```

---

### 2. Open the Project

Open this project folder in VS Code.

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
