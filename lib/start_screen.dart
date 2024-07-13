import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "The Ultimate Flutter Fun!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 235, 221, 221),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 238, 227, 227),
            ),
            icon: const Icon(Icons.arrow_right_alt_rounded),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
