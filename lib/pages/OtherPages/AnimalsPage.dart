import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:moscowzoo/pages/OtherPages/animalList.dart';

import '../../const.dart';

class AnimalInfo extends StatelessWidget {
  final Animal animal;

  const AnimalInfo({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    Uint8List main_photo = base64Decode(animal.Image);
    Uint8List animal_location = base64Decode(animal.location_photo);
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
            child: Column(
              children: [
                Image.memory(
                  main_photo,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.fill,
                ),
                Padding(padding: EdgeInsets.all(12), child: Column(children: [
                  SizedBox(height: 20),
                  Text(
                    animal.description,
                    style: TextStyle(
                        color: Color(AppTextColor),
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(child: animal_location != null
                      ? Image.memory(
                    animal_location,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,)
                      : Text('Изображение локации пока отсутствует', style: TextStyle(color: Color(AppTextColor), fontSize: 20),)
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
                    animal.description_continuation,
                    style: TextStyle(
                        color: Color(AppTextColor),
                        fontSize: 20
                    ),
                  )
                ],),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
