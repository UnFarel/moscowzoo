import 'package:flutter/material.dart';
import 'package:moscowzoo/const.dart';
import 'package:url_launcher/url_launcher.dart';

class OtherPage extends StatefulWidget {
  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ещё', textAlign: TextAlign.center,),
        centerTitle: true,
        backgroundColor: Color(AppMainColor),
      ),
      body: Stack(children: [
        Image.asset('assets/images/bg.jpg',
            fit: BoxFit.cover, width: double.infinity, height: double.infinity),
        Column(
          children: [
            ListTile(
              title: Text('Правила зоопарка', style: TextStyle(color: Color(AppTextColor), fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios_sharp, color: Color(AppTextColor)),
              onTap: () => launch('https://moscowzoo.ru/for-visitors/rules-zoo/'),
            ),
            ListTile(
              title: Text('Экскурсии', style: TextStyle(color: Color(AppTextColor), fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios_sharp, color: Color(AppTextColor)),
              onTap: () => launch('https://moscowzoo.ru/for-visitors/rules-zoo/'),
            ),
            ListTile(
              title: Text('Экспозиции', style: TextStyle(color: Color(AppTextColor), fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios_sharp, color: Color(AppTextColor)),
              onTap: () => launch('https://moscowzoo.ru/for-visitors/rules-zoo/'),
            ),
            ListTile(
              title: Text('Виртуальный тур', style: TextStyle(color: Color(AppTextColor), fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios_sharp, color: Color(AppTextColor)),
              onTap: () => launch('https://moscowzoo.ru/for-visitors/rules-zoo/'),
            ),
            ListTile(
              title: Text('Библиотека зоопарка', style: TextStyle(color: Color(AppTextColor), fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios_sharp, color: Color(AppTextColor)),
              onTap: () => launch('https://moscowzoo.ru/for-visitors/rules-zoo/'),
            ),
            ListTile(
              title: Text('Образование', style: TextStyle(color: Color(AppTextColor), fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios_sharp, color: Color(AppTextColor)),
              onTap: () => launch('https://moscowzoo.ru/for-visitors/rules-zoo/'),
            ),
            ListTile(
              title: Text('Помочь зоопарку', style: TextStyle(color: Color(AppTextColor), fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios_sharp, color: Color(AppTextColor)),
              onTap: () => launch('https://moscowzoo.ru/for-visitors/rules-zoo/'),
            ),
            ListTile(
              title: Text('Контакты', style: TextStyle(color: Color(AppTextColor), fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios_sharp, color: Color(AppTextColor)),
              onTap: () => launch('https://moscowzoo.ru/for-visitors/rules-zoo/'),
            ),
          ],
        )
      ]
      ),
    );
  }
}
