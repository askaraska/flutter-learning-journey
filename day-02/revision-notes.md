# Day 2 — Flutter Layouts and Responsive UI

## 1. Layout fundamentals

- `Scaffold` provides the basic screen structure.
- `AppBar` displays the top application bar.
- `Center` positions its child in the center.
- `Padding` adds space around a widget.
- `SizedBox` adds fixed spacing or dimensions.

## 2. Row and Column

- `Row` arranges children horizontally.
- `Column` arranges children vertically.
- `mainAxisAlignment` controls placement along the main axis.
- `crossAxisAlignment` controls placement along the cross axis.

## 3. Expanded and Flexible

- `Expanded` fills the available space along a Row or Column's main axis.
- `Flexible` allows a child to use some or all of its allocated space.
- Both are used inside `Row`, `Column`, or another `Flex` widget.

## 4. ListView and GridView

- `ListView` displays a scrollable list, usually one item per row.
- `GridView.count` displays items in a grid with a specified number of columns.
- `crossAxisCount` controls the number of grid columns.
- `crossAxisSpacing` adds horizontal space between columns.
- `mainAxisSpacing` adds vertical space between rows.

## 5. Responsive UI with MediaQuery

- `MediaQuery.of(context).size.width` reads the Flutter window width.
- We can use width breakpoints to choose a layout.
- In this project:
  - Below 600: one column.
  - From 600 to below 900: two columns.
  - 900 or above: three columns.
- `LayoutBuilder` is another useful tool when a layout depends on the space available to a particular widget.

## 6. Reusable widgets and methods

- A reusable method such as `_topicCard()` avoids repeating the same UI code.
- Parameters let the same method display different icons, titles, and descriptions.
- Reusable code makes projects easier to maintain.

## 7. Button callbacks

- `onPressed` defines what happens when a button is pressed.
- An empty callback, `onPressed: () {}`, performs no action.
- `debugPrint()` can print a message to the debug console.

## 8. Scrolling and dashboard layout

- `SingleChildScrollView` lets the complete dashboard scroll.
- `GridView.count(shrinkWrap: true)` allows the grid to size itself around its contents.
- `NeverScrollableScrollPhysics()` disables the grid's own scrolling when the outer scroll view handles scrolling.

## 9. Running the Day 2 project

Command:

`flutter run -t lib/day2_layout_practice.dart -d chrome`

Useful shortcuts:

- `Ctrl + S`: save.
- `Shift + Alt + F`: format the Dart file.
- `r` in the Flutter terminal: hot reload.
- `R` in the Flutter terminal: hot restart.
- `q` in the Flutter terminal: quit.

## Day 2 completion

Completed:

- Layout fundamentals
- Row and Column
- Padding, SizedBox, and Container
- Expanded and Flexible
- ListView
- MainAxisAlignment and CrossAxisAlignment
- Responsive UI with MediaQuery
- Practical learning dashboard

Practical result: Built and tested a responsive learning dashboard in Chrome with summary cards, buttons, reusable topic cards, and a responsive grid.
