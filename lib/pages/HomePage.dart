import 'package:flutter/material.dart';
import 'package:moscowzoo/const.dart';
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
        Column(children: [
          SizedBox(height: 50),
          Center(child: Image.asset('assets/images/logo.png', scale: 1)),
          SizedBox(height: 10),
          Column(children:[GridView.count(crossAxisCount: 2, shrinkWrap: true,
            children: [
              Column(children: [IconButton(onPressed: () => launch(tickets_link), icon: Image.asset('assets/icons/tic.png'), iconSize: 100), Text("КУПИТЬ БИЛЕТЫ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20,))]),
              Column(children: [IconButton(onPressed: () => launch(tickets_link), icon: Image.asset('assets/icons/paw.png'), iconSize: 100), SizedBox(height: 2), Text("ПОКАЗАТЕЛЬНЫЕ КОРМЛЕНИЯ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20))]),
              Column(children: [IconButton(onPressed: () => launch(tickets_link), icon: Image.asset('assets/icons/megaph.png'), iconSize: 100), SizedBox(height: 2), Text("ЭКСКУРСИИ", style: TextStyle(color: Colors.white, fontSize: 20))]),
              Column(children: [IconButton(onPressed: () => launch(tickets_link), icon: Image.asset('assets/icons/phone.png'), iconSize: 100), SizedBox(height: 2), Text("КОНТАКТЫ", style: TextStyle(color: Colors.white, fontSize: 20))]),
        ])]),
          Container(child: Stack(children: [Center(child: Container(width: 400, height: 130, child: Image(image: AssetImage("assets/images/news1.jpg"))),), Container(child: Center(child: Text("Носуха топ", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white),),),)],))
      ]),]
      ),
    );
  }
}
