# Flutter AlertDialog Demo

[REWRITE] AlertDialog is a popup box that asks the user to make a choice or confirm something before continuing. This demo uses it as a phone ringtone picker.

## How to run

1. [REWRITE] Clone the repo and open the folder.
2. [REWRITE] Run `flutter pub get`.
3. [REWRITE] Run `flutter run` (or `flutter run -d chrome`).

[REWRITE] If the android/ios folders are missing, run `flutter create .` first.

## The three attributes

### 1. icon
- **Default:** [REWRITE] No icon is shown (the value is null).
- **What changes on screen:** [REWRITE] A music note appears above the title.
- **Why a developer would change it:** [REWRITE] An icon quickly tells the user what the dialog is about.

### 2. backgroundColor
- **Default:** [REWRITE] The dialog uses the app theme's surface color.
- **What changes on screen:** [REWRITE] The dialog background turns light teal.
- **Why a developer would change it:** [REWRITE] To match the app's brand or to make a dialog stand out.

### 3. shape
- **Default:** [REWRITE] Rounded corners (a large radius in Material 3).
- **What changes on screen:** [REWRITE] With a radius of 4, the corners look much sharper.
- **Why a developer would change it:** [REWRITE] To match the app's design style, rounder or more square.

## Screenshot

![Final UI](screenshots/final.png)
 Add your own screenshot at this path.

## Sources

- Flutter API docs, AlertDialog: https://api.flutter.dev/flutter/material/AlertDialog-class.html
-  Any other source you used, or remove this line.