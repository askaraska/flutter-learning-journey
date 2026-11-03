# Day 4 – Flutter Navigation and Multiple Screens

## Overview

Day 4 focused on understanding navigation in Flutter and building applications with multiple screens.

## Topics Covered

- Understanding navigation and routes
- Navigator.push()
- Navigator.pop()
- Creating multiple screens
- Passing data between screens using constructors
- Named routes
- ListView.builder()
- Navigation stack and screen transitions

## Practical Projects

| File                            | Description                            |
| ------------------------------- | -------------------------------------- |
| day4_push_practice.dart         | Basic screen navigation                |
| day4_multiple_screens.dart      | Navigation between multiple screens    |
| day4_data_passing_practice.dart | Passing course details between screens |
| day4_named_routes_practice.dart | Navigation using named routes          |
| day4_learning_app.dart          | Multi-screen learning application      |

## Final Mini Project: Learning App

Features:

- Home screen with navigation options
- Courses screen displaying available courses
- Course details screen showing course name, duration, and status
- Profile screen
- Named route navigation
- Dynamic course details using constructor parameters

## Testing

- Tested navigation between all screens.
- Verified course details for Python, Flutter, and FastAPI.
- Tested back navigation.
- Ran `flutter analyze` successfully with no issues found.

## Commands Used

```bash
flutter run -t lib/day4_learning_app.dart -d chrome
flutter analyze
```

## Learning Outcome

Understood how Flutter manages navigation, routes, screen transitions, and data passing between screens.
