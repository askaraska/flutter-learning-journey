# Day 3 - Revision Notes

## 1. What is State?

State is information or data that can change while
an application runs and may affect the UI.

## 2. StatelessWidget

A widget that does not manage its own mutable state.

## 3. StatefulWidget

A widget that works with a State object to manage
mutable data and update its UI.

## 4. setState()

Notifies Flutter that state has changed and schedules
a widget rebuild.

Example:

setState(() {
counter++;
});

## 5. Button Interactions

- ElevatedButton: Filled button
- TextButton: Text-based button
- OutlinedButton: Outlined button

onPressed handles button callbacks.

## 6. Callback Function

A function passed to another widget or function to
be executed later when an event occurs.

## 7. TextField

Allows users to enter text.

## 8. TextEditingController

Reads and manages the text entered by a user.

Example:

nameController.text

## 9. dispose()

Releases resources used by a controller.

## 10. Counter Application

- counter++ increases the value.
- counter-- decreases the value.
- counter = 0 resets the value.

## 11. Conditional Rendering

Displays widgets based on a condition.

Example:

if (profileSubmitted) ...[
Text('Profile submitted'),
]

## 12. Input Validation

Use isEmpty to check whether required input is missing.

## 13. Important Flutter Concepts

- setState()
- onPressed
- TextEditingController
- dispose()
- SingleChildScrollView
- ScaffoldMessenger
- SnackBar
