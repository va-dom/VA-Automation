import 'package:flutter/material.dart';
import 'package:reusable_components_dom/models/card_model.dart';
import 'package:reusable_components_dom/widgets/card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 300,
          child: VACard(
            cardModel: ReusableCardModel(),
          ),
        ),
      ),
    );
  }
}
