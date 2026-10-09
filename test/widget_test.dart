import 'package:flutter_test/flutter_test.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  testWidgets('Quiz goes from start to results', (WidgetTester tester) async {
    await tester.pumpWidget(const Quiz());

    await tester.tap(find.text('Spustiť kvíz'));
    await tester.pump();

    for (final question in questionList) {
      expect(find.text(question.text), findsOneWidget);
      await tester.tap(find.text(question.answers[0]));
      await tester.pump();
    }

    expect(
      find.text('Správne si odpovedala na 10 z 10 otázok!'),
      findsOneWidget,
    );
  });
}
