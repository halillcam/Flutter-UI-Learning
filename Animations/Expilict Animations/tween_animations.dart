import 'package:flutter/material.dart';

class TweenAnimations extends StatefulWidget {
  const TweenAnimations({super.key});

  @override
  State<TweenAnimations> createState() => _TweenAnimationsState();
}

class _TweenAnimationsState extends State<TweenAnimations> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));

    _sizeAnimation = Tween<double>(begin: 20.0, end: 60.0).animate(_controller);

    _controller.repeat(reverse: true);
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
        child: AnimatedBuilder(
          animation: _sizeAnimation,
          builder: (context, child) {
            return Text(
              "Büyüyorum",
              style: TextStyle(fontSize: _sizeAnimation.value, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}
