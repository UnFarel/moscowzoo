import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../const.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Библиотека зоопарка',
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
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      child: Image.asset(
                          'assets/images/library.jpg'),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Библиотека расположена в здании нового входа в зоопарк со стороны станции метро Баррикадная и работает с 9:00 до 18:00', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          Text('Каждый понедельник и вторник с 3 июля по 22 августа 2023 года', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          SizedBox(height: 4),
                          Divider(
                            height: 1,
                            color: Color(AppTextColor),
                            thickness: 1,
                          ),
                          SizedBox(height: 4),
                          Text("Контакты", style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          SizedBox(height: 4),
                          Divider(
                            height: 1,
                            color: Color(AppTextColor),
                            thickness: 1,
                          ),
                          SizedBox(height: 4),
                          TextButton(onPressed: () async {launch('tel:+74992550092');}, child: Text('Тел.: +7 499 255-00-92', style: TextStyle(color: Color(AppTextColor), fontSize: 20),)),
                          TextButton(onPressed: () async {launch('mailto:biblioteka@moscowzoo.ru');}, child: Text('E-mail: biblioteka@moscowzoo.ru', style: TextStyle(color: Color(AppTextColor), fontSize: 20),)),
                          TextButton(onPressed: () async {launch('https://opac.nekrasovka.ru/zoo.htm');}, child: Text('Электронный каталог https://opac.nekrasovka.ru/zoo.htm', style: TextStyle(color: Color(AppTextColor), fontSize: 20),)),
                          SizedBox(height: 4),
                          Divider(
                            height: 1,
                            color: Color(AppTextColor),
                            thickness: 1,
                          ),
                          SizedBox(height: 4),
                          Text('Кто может записаться в библиотеку:', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          SizedBox(height: 4),
                          Text('>  Граждане РФ (нужен паспорт)', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          Text('>  Граждане иностранных государств (нужен паспорт или справка, подтверждающая личность)', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          Text('>  Дети до 14 лет могут записаться в присутствии родителей или опекунов', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          SizedBox(height: 4),
                          Divider(
                            height: 1,
                            color: Color(AppTextColor),
                            thickness: 1,
                          ),
                          SizedBox(height: 4),
                          Text('С читательским билетом вы можете:', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          SizedBox(height: 4),
                          Text('>  Брать книги для чтения в читальном зале', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          Text('>  Работать за компьютерами в читальном зале', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          Text('>  Вы можете одномоментно брать для чтения до 15 книг. При необходимости можно отложить книги для последующей работы сроком до 14 дней.', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          SizedBox(height: 8),
                          Divider(
                            height: 1,
                            color: Color(AppTextColor),
                            thickness: 1,
                          ),
                          SizedBox(height: 4),
                          Text('Что вы можете сделать даже без читательского билета:', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          SizedBox(height: 4), 
                          Text('>  Пользоваться wi-fi', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          Text('>  Посетить книжную выставку', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          Text('>  Пожертвовать нам книгу зоологической тематики', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          Text('>  Узнать о наличии литературы в фонде, воспользовавшись поиском в электронном каталоге или обратившись к библиотекарю', style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                          Text(bibl, style: TextStyle(color: Color(AppTextColor), fontSize: 20),)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
