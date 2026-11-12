import 'package:flutter_test/flutter_test.dart';
import 'package:my_first_app/learning_tracker_app.dart';

void main() {
  testWidgets('Learning Tracker home screen loads', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const LearningTrackerApp());

    expect(find.text('Learning Tracker'), findsOneWidget);
    expect(find.text('Welcome Back!'), findsOneWidget);
    expect(find.text('View Courses'), findsOneWidget);
    expect(find.text('Add Course'), findsOneWidget);
  });
}
