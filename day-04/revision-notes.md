# Day 4 – Revision Notes

## 1. What is Navigation?

Navigation means moving from one screen to another in a Flutter application.

## 2. What is a Route?

A route represents a screen or page in the application.

## 3. Navigation Stack

Flutter uses a stack to manage navigation.

- `push()` adds a new screen.
- `pop()` removes the current screen.
- Navigation follows LIFO (Last In, First Out).

## 4. Navigator.push()

Used to open another screen.

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const SecondScreen(),
  ),
);
```

## 5. Navigator.pop()

Used to return to the previous screen.

```dart
Navigator.pop(context);
```

## 6. Passing Data Between Screens

Pass values through constructor parameters.

```dart
CourseDetailsScreen(
  courseName: 'Python',
  duration: '30 Days',
  status: 'Completed',
);
```

Receive them using constructor parameters:

```dart
class CourseDetailsScreen extends StatelessWidget {
  final String courseName;

  const CourseDetailsScreen({
    super.key,
    required this.courseName,
  });
}
```

- `final` prevents reassignment.
- `required` makes the named argument compulsory.

## 7. Named Routes

Register routes inside MaterialApp.

```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const HomeScreen(),
    '/courses': (context) => const CoursesScreen(),
  },
);
```

Navigate using:

```dart
Navigator.pushNamed(context, '/courses');
```

## 8. MaterialPageRoute vs Named Routes

- `MaterialPageRoute`: creates a route directly.
- Named routes: use registered string route names.
- `Navigator.push()` accepts a Route object.
- `Navigator.pushNamed()` accepts a route name.

## 9. ListView.builder()

Creates a scrollable list efficiently.

```dart
ListView.builder(
  itemCount: courses.length,
  itemBuilder: (context, index) {
    final course = courses[index];
    return Text(course['name']!);
  },
);
```

- `itemCount`: number of items.
- `itemBuilder`: builds each item.
- `index`: current item position.
- `!`: null assertion operator.

## 10. Interview Questions

1. What is navigation in Flutter?
2. What is a route?
3. Explain Navigator.push() and Navigator.pop().
4. What is a navigation stack?
5. What is MaterialPageRoute?
6. How do you pass data between screens?
7. What is the purpose of `required`?
8. What is the difference between push() and pushNamed()?
9. What is ListView.builder()?
10. What does the null assertion operator (!) do?

## Practical Project

Built a multi-screen Learning App with Home, Courses, Course Details, and Profile screens.

## Testing

`flutter analyze` – No issues found.
