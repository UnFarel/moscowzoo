import 'dart:core';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:moscowzoo/pages/OtherPages/excursions_list.dart';

import '../../const.dart';

class ExcursionsPage extends StatefulWidget {
  const ExcursionsPage({super.key});

  @override
  State<ExcursionsPage> createState() => _ExcursionsPageState();
}

class _ExcursionsPageState extends State<ExcursionsPage> {

  @override
  Widget build(BuildContext context) {
    List<Excursions> excursions = AllExcursions;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Экскурсии',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(AppTextColor)),
        ),
        centerTitle: true,
        backgroundColor: Color(AppMainColor),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/bg.jpg',
              fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          Column(children: [Expanded(
              child: ListView.separated(
                  itemCount: excursions.length,
                  itemBuilder: (context, index) {
                    final zoo = excursions[index];

                    return Padding(padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                        child: Container(
                          child: ListTile(
                            onTap: () async {launch('tel://$number');},
                            title: Column(
                              children: [
                                Text(
                              zoo.excursion_title,
                              style: TextStyle(color: Color(AppTextColor), fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 20),
                              Row(children: [
                                Container(child: ClipRRect(borderRadius: BorderRadius.circular(90), child: Image.network(zoo.excursion_image, fit: BoxFit.cover, height: 70, width: 70),)),
                                SizedBox(width: 20),
                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Row(children: [Icon(Icons.people, color: Color(AppTextColor),), SizedBox(width: 8), Text(
                                  zoo.people_amount,
                                  style: TextStyle(color: Color(AppTextColor)),
                                )],),
                                Row(children: [Icon(Icons.watch_later, color: Color(AppTextColor),), SizedBox(width: 8), Text(zoo.excursion_duration, style: TextStyle(color: Color(AppTextColor)),)],),
                                Row(children: [Icon(Icons.emoji_people, color: Color(AppTextColor),), SizedBox(width: 8), Text(
                                  zoo.age_limit,
                                  style: TextStyle(color: Color(AppTextColor)),
                                )],)],),
                              ],
                              ),
                                SizedBox(height: 20),],),
                            subtitle: Text(
                        zoo.excursion_description,
                        style: TextStyle(color: Color(AppTextColor), fontSize: 20),
                      ),
                    ),)
                    );
                  },
              separatorBuilder: (BuildContext, int index) => const Divider(color: Color(AppTextColor), indent: 20 ,endIndent: 20,),))],)
        ]
      ),
    );
  }
}
