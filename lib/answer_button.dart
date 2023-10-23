

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.answer,required this.onTap,super.key});
  final String answer;
  final void Function() onTap;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(

          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(90, 40, 90, 40),
            child: Text(answer),
          )),
    );
  }
}
