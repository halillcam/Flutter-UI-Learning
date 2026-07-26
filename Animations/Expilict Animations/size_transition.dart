import 'package:flutter/material.dart';

class SizeTransitionPractice extends StatefulWidget {
  const SizeTransitionPractice({super.key});

  @override
  State<SizeTransitionPractice> createState() => _SizeTransitionPracticeState();
}

class _SizeTransitionPracticeState extends State<SizeTransitionPractice>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizeTransition(
              sizeFactor: _controller,
              alignment: Alignment.center,
              child: FlutterLogo(),
            ),
            SizedBox(height: 50),

            ElevatedButton(
              onPressed: () {
                if (_controller.isAnimating) {
                  _controller.stop();
                } else {
                  _controller.repeat();
                }
              },
              child: Text("İndir/Durdur"),
            ),
          ],
        ),
      ),
    );
  }
}
