import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map((data) {
              return Card(
                color: Color.fromARGB(0, 0, 0, 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: Row(
                        children: [
                          Text(((data['question_index'] as int) + 1).toString(),
                              style: GoogleFonts.openSans(
                                fontSize: 25,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            //allows the widget it wraps to expand to the parent widget
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data['question'] as String,

                                  style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  data['user_answer'] as String,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: data['user_answer'] ==
                                              data['correct_answer']
                                          ? Colors.green
                                          : Colors.red,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  data['correct_answer'] as String,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
