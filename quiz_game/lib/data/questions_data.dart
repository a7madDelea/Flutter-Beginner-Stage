import '../models/question_model.dart';

List<QuestionModel> questionsData = [
  QuestionModel(
    question: 'What are the main building blocks of Flutter UIs?',
    answers: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuestionModel(
    question: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuestionModel(
    question: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuestionModel(
    question:
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuestionModel(
    question: 'What happens if you change data in a StatelessWidget?',
    answers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuestionModel(
    question: 'How should you update data inside of StatefulWidgets?',
    answers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuestionModel(
    question: 'Which language is used to write Flutter apps?',
    answers: [
      'Dart',
      'Java',
      'Kotlin',
      'Swift',
    ],
  ),
  QuestionModel(
    question: 'What widget is used to create a scrollable list in Flutter?',
    answers: [
      'ListView',
      'Column',
      'SingleChildScrollView',
      'Stack',
    ],
  ),
  QuestionModel(
    question: 'What is the default layout model in Flutter?',
    answers: [
      'Flexbox-based',
      'Constraint-based',
      'Table-based',
      'Grid-based',
    ],
  ),
  QuestionModel(
    question: 'How do you define a function in Dart?',
    answers: [
      'void myFunction() {}',
      'def myFunction() {}',
      'function myFunction() {}',
      'fun myFunction() {}',
    ],
  ),
];
