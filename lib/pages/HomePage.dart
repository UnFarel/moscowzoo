import 'package:flutter/material.dart';
import 'package:moscowzoo/Home.dart';
import 'package:moscowzoo/pages/Map.dart';
import 'package:moscowzoo/const.dart';
import 'package:moscowzoo/pages/OtherPages/Contacts.dart';
import 'package:moscowzoo/pages/OtherPages/Events.dart';
import 'package:moscowzoo/pages/OtherPages/Feeding.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/bg.jpg',
            fit: BoxFit.cover, width: double.infinity, height: double.infinity),
        Positioned(
            child: Image.asset('assets/images/logo.png', scale: 1.2),
            left: 120,
            top: 45),
        Column(children: [SizedBox(height: 150),
          Column(children:[GridView.count(crossAxisCount: 2, shrinkWrap: true,
            children: [
              Column(children: [IconButton(onPressed: () => launch(tickets_link), icon: Image.asset('assets/icons/tic.png'), iconSize: 130), Text("КУПИТЬ БИЛЕТЫ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20,))]),
              Column(children: [IconButton(onPressed: () => launch(tickets_link), icon: Image.asset('assets/icons/paw.png'), iconSize: 100), SizedBox(height: 2), Text("ПОКАЗАТЕЛЬНЫЕ КОРМЛЕНИЯ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20))]),
              Column(children: [IconButton(onPressed: () => launch(tickets_link), icon: Image.asset('assets/icons/megaph.png'), iconSize: 100), SizedBox(height: 2), Text("СОБЫТИЯ", style: TextStyle(color: Colors.white, fontSize: 20))]),
              Column(children: [IconButton(onPressed: () => launch(tickets_link), icon: Image.asset('assets/icons/phone.png'), iconSize: 100), SizedBox(height: 2), Text("КОНТАКТЫ", style: TextStyle(color: Colors.white, fontSize: 20))]),
        ])])
      ]),
        Positioned(bottom: 20, left: 25, child: Stack( children: [Container(width: 300, height: 130, child: Image(image: AssetImage("assets/images/news1.jpg"))), Text("Носуха топ", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white),)],))
      ]
      ),
    );
  }
}
