import 'package:flutter/material.dart';

import '../../const.dart';

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
          appBar: AppBar(
            title: Text(
              'Экспозиции',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(AppTextColor)),
            ),
            centerTitle: true,
            backgroundColor: Color(AppMainColor),
          ),
          body: Stack(children: [
            Image.asset('assets/images/bg.jpg',
                fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          ],)),
    );
  }
}
