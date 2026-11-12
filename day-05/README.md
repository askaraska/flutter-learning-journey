# Day 5 – Learning Tracker App

## Project Overview

Built a Flutter Learning Tracker application that allows users to manage and view their learning courses.

This project combines Flutter concepts learned during Days 1–4 into one practical application.

## Features

- Home dashboard with learning overview
- View all available courses
- Add new courses
- Form validation for required fields
- Course status selection
- Reusable CourseCard widget
- Course details screen
- Navigation between multiple screens
- Shared course data using StatefulWidget and setState()

## Project Structure

```text
lib/
├── models/
│   └── course.dart
├── screens/
│   ├── home_screen.dart
│   ├── courses_screen.dart
│   ├── add_course_screen.dart
│   └── course_details_screen.dart
├── widgets/
│   └── course_card.dart
├── learning_tracker_app.dart
└── main.dart
```

## Concepts Practiced

- StatelessWidget and StatefulWidget
- Widget composition and reusable widgets
- Lists and custom model classes
- TextEditingController
- Form validation
- Callbacks and constructor parameters
- Navigator.push() and Navigator.pop()
- setState() and shared in-memory data
- Flutter widget testing

## Data Storage

Course data is currently stored in memory using a List<Course>. Added courses are not retained after restarting the application.

## Testing

Commands used:

```bash
flutter analyze
flutter test
```

Results:

- No analysis issues found.
- All widget tests passed.

## Learning Outcome

Completed a multi-screen Flutter application using the core concepts learned throughout the five-day Flutter learning plan.
