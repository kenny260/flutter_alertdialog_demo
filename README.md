# Flutter AlertDialog Demo

 AlertDialog is a popup box that asks the user to make a choice or confirm something before continuing. This demo uses it as a phone ringtone picker.

## How to run

1.  Clone the repo and open the folder.
2.  Run `flutter pub get`.
3.  Run `flutter run` (or `flutter run -d chrome`).

 If the android/ios folders are missing, run `flutter create .` first.

## The three attributes

### 1. icon
- **Default:**  No icon is shown (the value is null).
- **What changes on screen:**  A music note appears above the title.
- **Why a developer would change it:**  An icon quickly tells the user what the dialog is about.

### 2. backgroundColor
- **Default:**  The dialog uses the app theme's surface color.
- **What changes on screen:**  The dialog background turns light teal.
- **Why a developer would change it:**  To match the app's brand or to make a dialog stand out.

### 3. shape
- **Default:**  Rounded corners (a large radius in Material 3).
- **What changes on screen:**  With a radius of 4, the corners look much sharper.
- **Why a developer would change it:**  To match the app's design style, rounder or more square.

## Screenshot
![first screenshot](<Screenshot 2026-10-16 124954.png>)
![second screenshot](<Screenshot 2026-10-16 124926.png>)

## Sources

- Flutter API docs, AlertDialog: https://api.flutter.dev/flutter/material/AlertDialog-class.html
-  Any other source you used, or remove this line.