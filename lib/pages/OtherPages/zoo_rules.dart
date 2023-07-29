import 'package:flutter/material.dart';
import 'package:moscowzoo/const.dart';

class Rules extends StatefulWidget {
  const Rules({super.key});

  @override
  State<Rules> createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Правила зоопарка',
                textAlign: TextAlign.center,
              ),
              centerTitle: true,
              backgroundColor: Color(AppMainColor),
            ),
            body: Stack(children: [
              Image.asset('assets/images/bg.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity),
              SingleChildScrollView(
                  padding: EdgeInsets.all(12),
                  child: Column(children: [
                    Text(Rules_text,
                        style: TextStyle(
                            color: Color(AppTextColor), fontSize: 20)),
                    SizedBox(height: 20),
                    Text(Rules_warning_title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(AppTextColor), fontSize: 20)),
                    SizedBox(height: 20),
                    Text(Rules_warning,
                        style: TextStyle(
                            color: Color(AppTextColor), fontSize: 20)),
                  ])),
            ])));
  }
}
