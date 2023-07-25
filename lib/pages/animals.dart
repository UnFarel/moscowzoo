import 'package:flutter/material.dart';
import 'package:moscowzoo/const.dart';

class AnimalsPage extends StatefulWidget {
  @override
  State<AnimalsPage> createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/bg.jpg',
            fit: BoxFit.cover, width: double.infinity, height: double.infinity),
        Positioned(
            top: 20,
            left: 125,
            child: Row(children: [
              Text(
                'Животные',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(width: 60),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.white,
                iconSize: 40,
              )
            ]))
      ]),
    ));
  }
}
