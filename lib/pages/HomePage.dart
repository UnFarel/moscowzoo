import 'package:flutter/material.dart';
import 'package:moscowzoo/const.dart';
import 'package:moscowzoo/pages/OtherPages/excursions.dart';
import 'package:url_launcher/url_launcher.dart';

import 'OtherPages/Contacts.dart';
import 'OtherPages/Feeding.dart';

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
        Positioned(right: 0,bottom: -2, child: Image.asset('assets/images/bg-gir.jpg',
            fit: BoxFit.fill, width: MediaQuery.sizeOf(context).width * 0.68, height: MediaQuery.sizeOf(context).height * 0.5)),
        Column(children: [
          SizedBox(height: 50),
          Center(child: Image.asset('assets/images/logo.png', scale: 1)),
          SizedBox(height: 10),
          Column(children: [
            GridView.count(crossAxisCount: 2, shrinkWrap: true, children: [
              Column(children: [
                IconButton(
                    onPressed: () => launch(tickets_link),
                    icon: Image.asset('assets/icons/tic.png'),
                    iconSize: 100),
                TextButton(
                    onPressed: () => launch(tickets_link),
                    child: Text("КУПИТЬ БИЛЕТЫ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )))
              ]),
              Column(children: [
                IconButton(
                    onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => FeedingPage()))},
                    icon: Image.asset('assets/icons/paw.png'),
                    iconSize: 100),
                SizedBox(height: 2),
                TextButton(onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => FeedingPage()))}, child: Text("ПОКАЗАТЕЛЬНЫЕ КОРМЛЕНИЯ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18)))
              ]),
              Column(children: [
                IconButton(
                    onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ExcursionsPage()))},
                    icon: Image.asset('assets/icons/megaph.png'),
                    iconSize: 100),
                SizedBox(height: 2),
                TextButton(onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ExcursionsPage()))}, child: Text("ЭКСКУРСИИ",
                    style: TextStyle(color: Colors.white, fontSize: 18)))
              ]),
              Column(children: [
                IconButton(
                    onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ContactsPage()))},
                    icon: Image.asset('assets/icons/phone.png'),
                    iconSize: 100),
                SizedBox(height: 2),
                TextButton(onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ContactsPage()))}, child: Text("КОНТАКТЫ",
                    style: TextStyle(color: Colors.white, fontSize: 18)))
              ]),
            ])
          ]),
          Container(
              child: Stack(
            children: [
              Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.16,
                    child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image(image: AssetImage("assets/images/news1.jpg"), fit: BoxFit.cover,),)),
              ),
              Container(
                child: Center(
                  child: Text(
                    "Носуха топ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              )
            ],
          ))
        ]),
      ]),
    );
  }
}
