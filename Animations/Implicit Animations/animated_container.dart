import 'package:flutter/material.dart';

class AnimatedContainerPractice extends StatefulWidget {
  const AnimatedContainerPractice({super.key});

  @override
  State<AnimatedContainerPractice> createState() => _AnimatedContainerPracticeState();
}

class _AnimatedContainerPracticeState extends State<AnimatedContainerPractice> {
  double width = 200;
  double height = 200;
  Color containerColor = Colors.amber;
  String appBarTitle = "title";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 800),
              curve: Curves.bounceOut,
              width: width,
              height: height,
              color: containerColor,
              onEnd: () => setState(() {
                appBarTitle = "new title";
              }),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Genişlik 200 ise 100 yap, 100 ise 200 yap
                  width = (width == 200) ? 100 : 200;

                  // Yükseklik 200 ise 100 yap, 100 ise 200 yap
                  height = (height == 200) ? 100 : 200;

                  // Renk amber ise mavi yap, mavi ise amber yap
                  containerColor = (containerColor == Colors.amber) ? Colors.blue : Colors.amber;
                });
              },
              child: Text("Container ile oyna"),
            ),
          ],
        ),
      ),
    );
  }
}
