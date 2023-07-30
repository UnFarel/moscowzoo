import 'package:flutter/material.dart';

import '../../const.dart';

class ExcursionsPage extends StatefulWidget {
  const ExcursionsPage({super.key});

  @override
  State<ExcursionsPage> createState() => _ExcursionsPageState();
}

class _ExcursionsPageState extends State<ExcursionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Экскурсии',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(AppTextColor)),
        ),
        centerTitle: true,
        backgroundColor: Color(AppMainColor),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/bg.jpg',
              fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(),
                Container(),
                Container(),
                Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
