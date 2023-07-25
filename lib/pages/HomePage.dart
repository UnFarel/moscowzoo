import 'package:flutter/material.dart';
import 'package:moscowzoo/Home.dart';
import 'package:moscowzoo/pages/Map.dart';
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
        Positioned(
            child: Image.asset('assets/images/logo.png', scale: 1.2),
            left: 200,
            top: 45),
        Positioned(
            child: Image.asset('assets/images/bg-gir.jpg', scale: 0.77),
            left: 20,
            top: 100),
        Container(
            child: Column(
            children: [
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () => launch(tickets_link),
                      child: Ink.image(
                        image: AssetImage('assets/icons/tickets.png'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('КУПИТЬ БИЛЕТЫ', style: TextStyle(color: Colors.white),),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: AssetImage('assets/icons/paw.png'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('РАСПИСАНИЕ КОРМЛЕНИЯ', style: TextStyle(color: Colors.white),),
                    SizedBox(height: 6)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: AssetImage('assets/icons/megaph.png'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('СОБЫТИЯ', style: TextStyle(color: Colors.white),),
                    SizedBox(height: 6)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: AssetImage('assets/icons/phone.png'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('КОНТАКТЫ', style: TextStyle(color: Colors.white),),
                    SizedBox(height: 6)
                  ],
                )
              ],
            )
          ],
        )),
      ]),
    );
  }
}
