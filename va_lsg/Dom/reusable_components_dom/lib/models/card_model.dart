import 'package:flutter/material.dart';

class ReusableCardModel {
  final IconData? icon;
  final IconData actionIcon;
  final String header;
  final String subheader;
  final Color circleColor;
  final Color iconColor;
  final Color headerColor;
  final Color subheaderColor;
  final Color color;
  final double elevation;
  final Function()? action;

  ReusableCardModel({
    this.icon,
    this.actionIcon = Icons.settings,
    this.header = "Header",
    this.subheader = "Subheader",
    this.circleColor = const Color(0xFF00029F),
    this.headerColor = const Color(0xFF1D1B20),
    this.iconColor = const Color(0xFFF6F6F6),
    this.subheaderColor = const Color(0xFF1D1B20),
    this.color = const Color(0xFFF6F6F6),
    this.elevation = 1.0,
    this.action,
  });
}
