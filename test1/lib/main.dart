import 'package:flutter/material.dart';
import 'package:wordnik/wordnik.dart';

Future<void> main() async {
  Wordnik wordnik = Wordnik('YOUR_API_KEY');

  WordObject randomNoun = await wordnik.getRandomWord(
    partsOfSpeech: PartOfSpeechOptions(noun: true, nounPlural: false, nounPosessive: false, properNoun: false, properNounPlural: false, properNounPosessive: false, givenName: false, familyName: false),
    minLength: 5,
    maxLength: 7
  );
  print('Got random noun "${randomNoun.word}".\n');
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(''),
        ),
      ),
    );
  }
}

