import 'package:flutter/material.dart';
import 'package:lsg_demo/models/card_model.dart';
import 'package:lsg_demo/widgets/card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: VACard(
                    cardModel: ReusableCardModel(elevation: 10),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: VACard(
                    cardModel: ReusableCardModel(elevation: 1),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: VACard(
                    cardModel: ReusableCardModel(elevation: 0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
