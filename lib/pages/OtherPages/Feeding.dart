import 'package:flutter/material.dart';

import '../../const.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;
import 'package:html/dom.dart' as dom;

class FeedingPage extends StatefulWidget {
  const FeedingPage({super.key});

  @override
  State<FeedingPage> createState() => _FeedingPageState();
}

Future<List<List<String>>> feeding_parser() async {
  final url = Uri.parse("https://moscowzoo.ru/");
  final response = await http.get(url);

  List<String> FeedingTime = [];
  List<String> FeedingAnimal = [];

  if (response.statusCode == 200) {
    final document = htmlParser.parse(utf8.decode(response.bodyBytes));
    final ulElement = document.querySelector(".h-schedule-tab-list");

    if (ulElement != null) {
      final liElements = ulElement.querySelectorAll("li");

      for (final liElement in liElements) {
        final itemText = liElement.text;
        final parts = itemText.split('\n').where((part) => part.trim().isNotEmpty);

        if (parts.length == 2) {
          final time = parts.first.trim();
          final title = parts.last.trim();
          FeedingTime.add(time);
          FeedingAnimal.add(title);
        } else {
          print("Не удалось разобрать строку: $itemText");
        }
      }
    } else {
      print("Элемент не найден");
    }
  } else {
    print("Не удалось выполнить запрос");
  }
  return [FeedingTime, FeedingAnimal];
}

class _FeedingPageState extends State<FeedingPage> {
  List<List<String>> myListItems = [
    ['09:00 - Ларга самец', '09:15 -  Морской заяц, ларга, серый тюлень',' 09:30 -  Бурый Медведь', '09:30 -  Моржи', '09:45 -  Самки Сивуча и молодые северные морские котики', '10:00 - Гималайский Медведь', '10:00 -  Сивуч','10:30 - Амурский тигр','10:30 - Северные морские котики','11:00 - Серые тюлени','12:30 -  Выдра','12:45 - Морской заяц, ларга, серый тюлень','13:00 - Моржи','13:30 - Росомаха','14:00 -  Обитатели павильона экзотариум (2этаж)','14:30 -  Сивуч','14:30 - Обитатели павильона экзотариум (3 этаж)','15:00 - Серые тюлени','15:00 -  Амфибии(Оранжерея)','15:15 -  Самки сивуча и молодые морские котики','15:30 - Северные морские котики','15:45 - Морской заяц, ларга, серый тюлень','15:50 - Моржи','16:00 - Ларга самец'],
    ['09:00 - Ларга самец', '09:15 -  Морской заяц, ларга, серый тюлень',' 09:30 -  Бурый Медведь', '09:30 -  Моржи', '09:45 -  Самки Сивуча и молодые северные морские котики', '10:00 - Гималайский Медведь', '10:00 -  Сивуч','10:30 - Амурский тигр','10:30 - Северные морские котики','11:00 - Серые тюлени','12:30 -  Выдра','12:45 - Морской заяц, ларга, серый тюлень','13:00 - Моржи','13:30 - Росомаха','14:00 -  Обитатели павильона экзотариум (2этаж)','14:30 -  Сивуч','14:30 - Обитатели павильона экзотариум (3 этаж)','15:00 - Серые тюлени','15:00 -  Амфибии(Оранжерея)','15:15 -  Самки сивуча и молодые морские котики','15:30 - Северные морские котики','15:45 - Морской заяц, ларга, серый тюлень','15:50 - Моржи','16:00 - Ларга самец'],
    ['09:00 - Ларга самец', '09:15 -  Морской заяц, ларга, серый тюлень',' 09:30 -  Бурый Медведь', '09:30 -  Моржи', '09:45 -  Самки Сивуча и молодые северные морские котики', '10:00 - Гималайский Медведь', '10:00 -  Сивуч','10:30 - Амурский тигр','10:30 - Северные морские котики','11:00 - Серые тюлени','12:30 -  Выдра','12:45 - Морской заяц, ларга, серый тюлень','13:00 - Моржи','13:30 - Росомаха','14:00 -  Обитатели павильона экзотариум (2этаж)','14:30 -  Сивуч','14:30 - Обитатели павильона экзотариум (3 этаж)','15:00 - Серые тюлени','15:00 -  Амфибии(Оранжерея)','15:15 -  Самки сивуча и молодые морские котики','15:30 - Северные морские котики','15:45 - Морской заяц, ларга, серый тюлень','15:50 - Моржи','16:00 - Ларга самец'],
    ['09:00 - Ларга самец', '09:15 -  Морской заяц, ларга, серый тюлень',' 09:30 -  Бурый Медведь', '09:30 -  Моржи', '09:45 -  Самки Сивуча и молодые северные морские котики', '10:00 - Гималайский Медведь', '10:00 -  Сивуч','10:30 - Амурский тигр','10:30 - Северные морские котики','11:00 - Серые тюлени','12:30 -  Выдра','12:45 - Морской заяц, ларга, серый тюлень','13:00 - Моржи','13:30 - Росомаха','14:00 -  Обитатели павильона экзотариум (2этаж)','14:30 -  Сивуч','14:30 - Обитатели павильона экзотариум (3 этаж)','15:00 - Серые тюлени','15:00 -  Амфибии(Оранжерея)','15:15 -  Самки сивуча и молодые морские котики','15:30 - Северные морские котики','15:45 - Морской заяц, ларга, серый тюлень','15:50 - Моржи','16:00 - Ларга самец'],
    ['09:15   -     Морской заяц, ларга, серый тюлень', '09:30   -     Бурый Медведь', '09:45   -     Самки Сивуча и молодые северные морские котики', '10:00   -     Степная кошка', '10:00   -     Гималайский Медведь', '10:00   -     Сивуч', '10:30   -     Новая Гвинея и Амазония 2 Аквариума в павильоне Приматы', '10:30   -     Амурский тигр','10:30   -     Северные морские котики', '10:45   -     Западная Африка 2 Аквариума в павильоне Приматы', '11:00   -     Еноты', '11:00   -     Серые тюлени', '11:30   -     Камышовый кот', '12:30   -     Выдра','12:45   -     Морской заяц, ларга, серый тюлень', '13:30   -     Росомаха','14:00   -     Фауна России', '14:00   -     Обитатели павильона экзотариум (2 этаж)','14:30   -     Бобры','14:30   -     Сивуч','14:30   -     Обитатели павильона экзотариум (3 этаж)','15:00   -     Серые тюлени', '15:15   -     Самки сивуча и молодые морские котики','15:30   -     Северные морские котики','15:45   -     Морской заяц, ларга, серый тюлень'],
    ['09:00 - Ларга самец', '09:15 -  Морской заяц, ларга, серый тюлень',' 09:30 -  Бурый Медведь', '09:30 -  Моржи', '09:45 -  Самки Сивуча и молодые северные морские котики', '10:00 - Гималайский Медведь', '10:00 -  Сивуч','10:30 - Амурский тигр','10:30 - Северные морские котики','11:00 - Серые тюлени','12:30 -  Выдра','12:45 - Морской заяц, ларга, серый тюлень','13:00 - Моржи','13:30 - Росомаха','14:00 -  Обитатели павильона экзотариум (2этаж)','14:30 -  Сивуч','14:30 - Обитатели павильона экзотариум (3 этаж)','15:00 - Серые тюлени','15:00 -  Амфибии(Оранжерея)','15:15 -  Самки сивуча и молодые морские котики','15:30 - Северные морские котики','15:45 - Морской заяц, ларга, серый тюлень','15:50 - Моржи','16:00 - Ларга самец'],
    ['09:00 - Ларга самец', '09:15 -  Морской заяц, ларга, серый тюлень',' 09:30 -  Бурый Медведь', '09:30 -  Моржи', '09:45 -  Самки Сивуча и молодые северные морские котики', '10:00 - Гималайский Медведь', '10:00 -  Сивуч','10:30 - Амурский тигр','10:30 - Северные морские котики','11:00 - Серые тюлени','12:30 -  Выдра','12:45 - Морской заяц, ларга, серый тюлень','13:00 - Моржи','13:30 - Росомаха','14:00 -  Обитатели павильона экзотариум (2этаж)','14:30 -  Сивуч','14:30 - Обитатели павильона экзотариум (3 этаж)','15:00 - Серые тюлени','15:00 -  Амфибии(Оранжерея)','15:15 -  Самки сивуча и молодые морские котики','15:30 - Северные морские котики','15:45 - Морской заяц, ларга, серый тюлень','15:50 - Моржи','16:00 - Ларга самец'],
  ];


  @override
  Widget build(BuildContext context) {
    feeding_parser();
    final List<String> FeedingAnimal;
    final List<String> FeedingTime;
    final dayofWeek = DateTime.now().weekday - 1;


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Показательные кормления',
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
              Padding(padding: EdgeInsets.symmetric(vertical: 12), child: FutureBuilder<List<List<String>>>(
                future: feeding_parser(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Column(children: [SizedBox(height: MediaQuery.sizeOf(context).height * 0.4,),Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(
                          color: Color(AppTextColor),

                        ),
                      ),],),
                    );
                  } else if (snapshot.hasError) {
                    return ListView.separated(
                      itemCount: myListItems[dayofWeek].length,
                      separatorBuilder: (context, index) => Divider(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(myListItems[dayofWeek][index], style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                        );
                      },
                    );
                  } else if (!snapshot.hasData) {
                    return ListView.separated(
                      itemCount: myListItems.length,
                      separatorBuilder: (context, index) => Divider(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(myListItems[dayofWeek][index], style: TextStyle(color: Color(AppTextColor), fontSize: 20),),
                        );
                      },
                    );
                  } else {
                    List<List<String>> combinedLists = snapshot.data!;
                    return ListView.separated(
                      itemCount: combinedLists[0].length,
                      separatorBuilder: (context, index) => Divider(),
                      itemBuilder: (context, index) {
                        String itemText = '${combinedLists[0][index]}   -     ${combinedLists[1][index]}';
                        return ListTile(
                          title: Text(itemText, style: TextStyle(color: Colors.white, fontSize: 20)),
                        );
                      },
                    );
                  }
                },
              ))
            ],
          )
          ),
    );
  }
}
