import 'package:flutter/material.dart';
import 'package:flutter_lsg/screens/lsg_home.dart';
import 'package:va_reusable_components/va_reusable_components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LSG Demo',
      theme: ThemeData(
        colorScheme: VaTheme.themeData.colorScheme,
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: const LSGHome(),
    );
  }
}
