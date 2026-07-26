import 'package:flutter/material.dart';

class RotationTranstionPractice extends StatefulWidget {
  const RotationTranstionPractice({super.key});

  @override
  State<RotationTranstionPractice> createState() => _RotationTranstionPracticeState();
}

class _RotationTranstionPracticeState extends State<RotationTranstionPractice>
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
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            RotationTransition(
              turns: _controller,
              alignment: Alignment.bottomRight,
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
              child: Text("Durdur/Başlat"),
            ),
          ],
        ),
      ),
    );
  }
}
