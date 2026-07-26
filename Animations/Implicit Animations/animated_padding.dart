import 'package:flutter/material.dart';

class AnimatedPaddingPractice extends StatefulWidget {
  const AnimatedPaddingPractice({super.key});

  @override
  State<AnimatedPaddingPractice> createState() => _AnimatedPaddingPracticeState();
}

class _AnimatedPaddingPracticeState extends State<AnimatedPaddingPractice> {
  EdgeInsets animationInsets = const EdgeInsets.only(top: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 50, height: 50, color: Colors.red),

            AnimatedPadding(
              padding: animationInsets,
              duration: const Duration(milliseconds: 800),
              curve: Curves.bounceOut,
              child: Container(width: 50, height: 50, color: Colors.yellow),
            ),

            const SizedBox(height: 50),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  animationInsets = (animationInsets.top == 50)
                      ? const EdgeInsets.only(top: 5)
                      : const EdgeInsets.only(top: 50);
                });
              },
              child: const Text("Aralarını Aç/Kapat"),
            ),
          ],
        ),
      ),
    );
  }
}
