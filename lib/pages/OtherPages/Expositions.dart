import 'package:flutter/material.dart';

class ExpositionsPage extends StatefulWidget {
  const ExpositionsPage({super.key});

  @override
  State<ExpositionsPage> createState() => _ExpositionsPageState();
}

class _ExpositionsPageState extends State<ExpositionsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
            child: Text('Экспозиции'),
          )),
    );
  }
}
