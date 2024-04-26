import 'package:flutter/material.dart';
import 'package:reusable_components_dom/models/card_model.dart';

class VACard extends StatefulWidget {
  final ReusableCardModel cardModel;
  const VACard({
    super.key,
    required this.cardModel,
  });

  @override
  State<VACard> createState() => _VACardState();
}

class _VACardState extends State<VACard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: widget.cardModel.elevation,
      color: widget.cardModel.color,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  color: widget.cardModel.circleColor,
                ),
                child: Center(
                  child: widget.cardModel.icon != null
                      ? Icon(
                          widget.cardModel.icon,
                          color: widget.cardModel.iconColor,
                        )
                      : cardText(
                          widget.cardModel.header.substring(0, 1),
                          widget.cardModel.iconColor,
                          true,
                        ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: cardContainer(
                    widget.cardModel.header,
                    widget.cardModel.headerColor,
                    true,
                    Alignment.centerLeft,
                  ),
                ),
                Expanded(
                  child: cardContainer(
                    widget.cardModel.subheader,
                    widget.cardModel.subheaderColor,
                    false,
                    Alignment.topLeft,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Icon(
                widget.cardModel.actionIcon,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container cardContainer(
    String context,
    Color textColor,
    bool isHeader,
    Alignment alignment,
  ) {
    return Container(
      padding: const EdgeInsets.all(5),
      alignment: alignment,
      child: cardText(
        context,
        textColor,
        isHeader,
      ),
    );
  }

  Text cardText(
    String context,
    Color textColor,
    bool isHeader,
  ) {
    return Text(
      context,
      style: TextStyle(
          color: textColor,
          fontWeight: isHeader ? FontWeight.w700 : FontWeight.normal,
          fontSize: isHeader ? 18 : 14),
    );
  }
}
