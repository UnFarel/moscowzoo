import 'package:flutter/material.dart';
import 'package:moscowzoo/pages/OtherPages/animalslist.dart';

import '../../const.dart';

class AnimalInfo extends StatelessWidget {
  final Animal animal;

  const AnimalInfo({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          animal.species,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(AppTextColor)),
        ),
        centerTitle: true,
        backgroundColor: Color(AppMainColor),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/bg.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity),
          Column(
            children: [
              Image.network(
                animal.urlImage,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              Text(
                animal.description,
                style: TextStyle(
                  color: Color(AppTextColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
