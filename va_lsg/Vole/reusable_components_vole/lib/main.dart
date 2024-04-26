import 'package:flutter/material.dart';
import 'package:reusable_demo/src/components/elevated_button_demo.dart';
import 'package:reusable_demo/src/components/primary_button_demo.dart';
import 'package:reusable_demo/src/components/secondary_button_demo.dart';
import 'package:reusable_demo/src/components/text_button_demo.dart';
import 'package:reusable_demo/src/components/tonal_button_demo.dart';
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
      title: 'Flutter Demo',
      // theme: ThemeData.from(
      //   colorScheme: VaTheme.themeData.colorScheme,
      //   useMaterial3: true,
      // ),
      theme: ThemeData(
        colorScheme: VaTheme.themeData.colorScheme,
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                PrimaryButtonDemo(),
                SizedBox(height: 16),
                SecondaryButtonDemo(),
                SizedBox(height: 16),
                TextButtonDemo(),
                SizedBox(height: 16),
                ElevatedButtonDemo(),
                SizedBox(height: 16),
                TonalButtonDemo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
