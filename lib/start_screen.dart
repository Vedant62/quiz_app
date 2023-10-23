import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        backgroundBlendMode: BlendMode.multiply,
        gradient: RadialGradient(
          colors: [Colors.purpleAccent, Colors.indigoAccent, Colors.blueAccent],
          radius: 2.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 70.0, 30.0, 16.0),
              child: Image.asset(
                "assets/images/quiz_logo.png",
                color: const Color.fromARGB(140, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
             Text(
              "Learn flutter the fun way!",
              style: GoogleFonts.lora(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(0, 0, 0, 0)),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "START QUIZ",
                      style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.arrow_forward_rounded)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
