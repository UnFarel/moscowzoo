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
          SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Image.network(
                  animal.urlImage,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  animal.description,
                  style: TextStyle(
                      color: Color(AppTextColor),
                      fontSize: 20
                  ),
                ),
                SizedBox(height: 20),
                Image.network(
                  animal.location,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  animal.location_text,
                  style: TextStyle(
                      color: Color(AppTextColor),
                      fontSize: 20
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  animal.next_text,
                  style: TextStyle(
                      color: Color(AppTextColor),
                      fontSize: 20
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
