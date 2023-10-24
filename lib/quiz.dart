import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
//both the variable declaration and the function creation below happens simultaneously, which may not guarantee what we expect
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    //for some initialization work before build
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
  void restartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }
  void switchScreen() {
    setState(() {
      activeScreen =  QuestionsScreen(onSelectAnswer: chooseAnswer,);
    });
  }
  void chooseAnswer(String answer){
      selectedAnswers.add(answer);
      if(selectedAnswers.length == questions.length){
          setState(() {
            activeScreen = ResultsScreen(chosenAnswers: selectedAnswers,onRestart: restartQuiz, );

          });
      }
  }
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}
