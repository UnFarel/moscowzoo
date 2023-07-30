import 'package:flutter/material.dart';

import '../../const.dart';

class FeedingPage extends StatefulWidget {
  const FeedingPage({super.key});

  @override
  State<FeedingPage> createState() => _FeedingPageState();
}

class _FeedingPageState extends State<FeedingPage> {
  List<String> myListItems = ['09:00 Ларга самец', '09:15 Морской заяц, ларга, серый тюлень',' 09:30 Бурый Медведь', '09:30 Моржи', '09:45 Самки Сивуча и молодые северные морские котики', '10:00 Гималайский Медведь', '10:00 Сивуч','10:30 Амурский тигр','10:30 Северные морские котики','11:00 Серые тюлени','12:30 Выдра','12:45 Морской заяц , ларга , серый тюлень','13:00 Моржи','13:30 Росомаха','14:00 Обитатели павильона экзотариум (2этаж)','14:30 Сивуч','14:30 Обитатели павильона экзотариум (3 этаж)','15:00 Серые тюлени','15:00 Амфибии(Оранжерея)','15:15 Самки сивуча и молодые морские котики','15:30 Северные морские котики','15:45 Морской заяц , ларга , серый тюлень','15:50 Моржи','16:00 Ларга самец'];

  @override
  Widget build(BuildContext context) {
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
              Padding(padding: EdgeInsets.symmetric(vertical: 12), child: ListView.separated(
                itemCount: myListItems.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(myListItems[index], style: TextStyle(color: Color(AppTextColor), fontSize: 16),),
                    leading: Icon(Icons.arrow_right, color: Color(AppTextColor),),
                  );
                },
              ),)
            ],
          )
          ),
    );
  }
}
