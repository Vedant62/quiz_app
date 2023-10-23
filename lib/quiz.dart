import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState() ;
  }
}

class _QuizState extends State<Quiz>{

//both the variable declaration and the function creation below happens simultabeously, which may not guarentee what we expect
  Widget? activeScreen;

  @override
  void initState() { //for some initialization work before build
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();

    });
  }


  @override
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}