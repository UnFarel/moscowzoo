import 'package:flutter/material.dart';
import 'package:moscowzoo/pages/OtherPages/ExpositionPage.dart';
import 'package:moscowzoo/pages/OtherPages/expositionsList.dart';

import '../../const.dart';

class ExpositionsPage extends StatefulWidget {
  const ExpositionsPage({super.key});

  @override
  State<ExpositionsPage> createState() => _ExpositionsPageState();
}

class _ExpositionsPageState extends State<ExpositionsPage> {
  List<Exposition> expositions = AllExpositions;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Экспозиции',
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
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            itemCount: expositions.length,
            itemBuilder: (context, index) {
              final exposition = expositions[index];
              return Container(
                  child: Padding(
                      padding: EdgeInsets.all(12),
                      child: InkWell(
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ExpositionPage(exposition : exposition)));},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                exposition.image,
                                fit: BoxFit.cover,
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.14,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              exposition.name,
                              style: TextStyle(color: Color(AppTextColor), fontSize: 19),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )));;
            },
          ),
            ],
          )),
    );
  }
}
