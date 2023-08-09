import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:moscowzoo/const.dart';
import 'package:moscowzoo/pages/OtherPages/AnimalsPage.dart';
import 'package:moscowzoo/pages/OtherPages/animalslist.dart';

class AnimalsPage extends StatefulWidget {
  @override
  State<AnimalsPage> createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
  final controller = TextEditingController();
  List<Animal> animals = allAnimals;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Наши животные',
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
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: TextField(
                      controller: controller,
                      style: TextStyle(
                        color: Color(AppTextColor),
                      ),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(AppTextColor),
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: Color(AppTextColor),
                        hintText: "У нас много животных, кого ищещь ты?",
                        hintStyle: TextStyle(
                          color: Color(AppTextColor),
                          fontSize: 14,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(AppTextColor)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onChanged: searchAnimal,
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: animals.length,
                          itemBuilder: (context, index) {
                            final animal = animals[index];
                            Uint8List avatar = base64Decode(animal.Image);
                            return ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                            leading: ClipRRect(borderRadius: BorderRadius.circular(90), child: Image.memory(
                                avatar,
                                fit: BoxFit.fill,
                                width: 64,
                                height: 64,
                              ),),
                              visualDensity: VisualDensity(vertical: 4),
                              title: Text(
                                animal.species,
                                style: TextStyle(color: Color(AppTextColor), fontSize: 20),
                              ),
                              onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalInfo(animal: animal)))},
                            );
                          }))
                ],
              )
            ])));
  }

  void searchAnimal(String query) {
    final suggestions = allAnimals.where((animal) {
      final animal_species = animal.species.toLowerCase();
      final input = query.toLowerCase();

      return animal_species.contains(input);
    }).toList();

    setState(() => animals = suggestions);
  }
}
