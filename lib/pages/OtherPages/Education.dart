import 'package:flutter/material.dart';

import '../../const.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'ОБразование',
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
