import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        //to make it scrollable
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: data['user_answer'] != data['correct_answer']
                        ? const Color.fromARGB(255, 235, 163, 158)
                        : const Color.fromARGB(255, 175, 220, 176),
                    borderRadius: BorderRadiusGeometry.circular(40),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 40, 3, 46),
                    ),
                  ),
                ),
                Expanded(
                  //to make widgets in it can't take space more than the widget before (row)
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          data['question'] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 242, 202, 249),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          data['user_answer'] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 206, 87, 227),
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          data['correct_answer'] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 182, 226, 232),
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
