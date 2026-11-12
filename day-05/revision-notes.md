# Day 5 – Flutter Revision Notes

## 1. Course Model

A model class defines the structure of data.

```dart
class Course {
  final String name;
  final String duration;
  final String status;
  final String description;
}
```

A Course object represents one course record.

## 2. List of Objects

```dart
final List<Course> courses = [];
```

A List<Course> stores multiple Course objects.

Access an item using its index:

```dart
final course = courses[index];
```

## 3. Reusable Widgets

CourseCard is a reusable widget that receives a Course object and an onTap callback.

Benefits:

- Avoids repeating UI code.
- Makes code easier to maintain.
- Separates UI responsibilities.

## 4. StatefulWidget and setState()

StatefulWidget is useful when a widget manages changing data.

```dart
setState(() {
  courses.add(newCourse);
});
```

This updates the list and tells Flutter to rebuild the relevant UI.

## 5. TextEditingController

A TextEditingController reads and manages text entered into a form field.

```dart
nameController.text.trim();
```

Use dispose() to release controller resources when the State object is removed.

## 6. Form Validation

GlobalKey<FormState> identifies and controls a Form.

```dart
if (_formKey.currentState!.validate()) {
  // Continue with valid form data.
}
```

A validator returns:

- An error message when input is invalid.
- null when input is valid.

## 7. Callbacks

VoidCallback represents a function with no arguments and no return value.

ValueChanged<Course> represents a callback that receives a Course object.

Callbacks allow child widgets to communicate events or data to parent widgets.

## 8. Navigation

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const SomeScreen(),
  ),
);
```

push() opens a new screen.

```dart
Navigator.pop(context);
```

pop() closes the current screen and returns to the previous screen.

## 9. Shared State

The parent LearningTrackerApp owns the course list.

Child screens receive the list or callbacks through constructor parameters.

This approach is called lifting state up: state is maintained in a common parent so multiple child widgets can use it.

## 10. In-Memory Storage

A List<Course> stores data only while the application is running.

Restarting the application resets the list to its initial values.

Permanent storage requires a database or local persistence solution.

## Day 5 Project Summary

Built a Learning Tracker app with:

- Dashboard
- Course list
- Add Course form
- Validation
- Shared course data
- Course details
- Multi-screen navigation

## Important Interview Questions

1. What is a model class?
2. What is the difference between List<String> and List<Course>?
3. Why do we use a reusable widget?
4. What is the purpose of setState()?
5. What is the difference between VoidCallback and ValueChanged<T>?
6. What is the purpose of GlobalKey<FormState>?
7. What is the difference between Navigator.push() and Navigator.pop()?
8. What is lifting state up?
9. What happens to in-memory data when an app restarts?
10. Why should TextEditingController be disposed?
