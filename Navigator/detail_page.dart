import 'package:flutter/material.dart';
import 'package:ui_practice/Navigator/model/user_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(args.name),
            SizedBox(height: 20),
            Text(args.surname),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Geri"),
            ),
          ],
        ),
      ),
    );
  }
}
