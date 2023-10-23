import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/start_screen_background.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers,});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }


  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions currectly'),
            SizedBox(height: 30,),
            QuestionsSummary(summaryData),
            SizedBox(
              height: 30,
            ),

            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(0, 0, 0, 0)
            ) ,onPressed: (() {}), child: Row(
              children: [
                Text('Restart', style: TextStyle(fontSize: 18, color: Colors.white),),
                Icon(Icons.restart_alt_rounded, )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
