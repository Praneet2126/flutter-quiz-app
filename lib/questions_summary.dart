import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              final isCorrect = data['correct_answer'] == data['user_answer'];

              return Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isCorrect
                      ? Colors.green.withOpacity(0.7)
                      : Colors.red.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(255, 38, 35, 35),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Your Answer:  ${data['user_answer']}',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Correct Answer:  ${data['correct_answer']}',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
