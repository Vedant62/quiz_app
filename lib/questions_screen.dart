import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen_background.dart';
import 'data/questions.dart';
import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text, style: TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.answers.map((answer){
              //these 3 dots will take all the values of a list/iterable
              // and pull them out of the list/iterable as comma seperated values in that place in code
              return AnswerButton(answer: answer, onTap: (){});
            }),

          ],
        ),
      ),
    );
  }
}
