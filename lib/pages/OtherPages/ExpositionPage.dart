import 'package:flutter/material.dart';
import 'package:moscowzoo/pages/OtherPages/expositionsList.dart';

import '../../const.dart';

class ExpositionPage extends StatelessWidget {
  final Exposition exposition;
  const ExpositionPage({super.key, required this.exposition});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity),
        SingleChildScrollView(child: Column(children: [
          Image.asset(
            exposition.Exposition_photo,
            width: MediaQuery.sizeOf(context).width,
            fit: BoxFit.fill,
          ),
          Padding(padding: EdgeInsets.all(12), child: Column(children: [
            SizedBox(height: 20),
            Text(
              exposition.Exposition_text,
              style: TextStyle(
                  color: Color(AppTextColor),
                  fontSize: 20
              ),
            ),
          ],),)
        ],),)
      ],),
    );
  }
}
