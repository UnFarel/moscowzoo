import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../const.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Контакты',
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
                    child: InkWell(
                      child: Image.asset('assets/images/yzndex_zoo.png'),
                      onTap: () => launch(zoo_location_link),
                    ),
                  ),
                  TextButton(
                    onPressed: () => launch(zoo_location_link),
                    child: Text(
                      "123242 Москва, Б. Грузинская, 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(AppTextColor),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Divider(
                                height: 1,
                                color: Color(AppTextColor),
                                thickness: 1,
                              ),
                              Text('Телефон',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 26,
                                      color: Color(AppTextColor))),
                              Divider(
                                height: 1,
                                color: Color(AppTextColor),
                                thickness: 1,
                              ),
                              SizedBox(height: 16),
                              Column(children: [
                                Text('Для справок',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('+74992522951',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text(
                                    'Дни рождения, познавательно-развлекательные программы',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('+74992555763',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('Арт-Зебра',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('+79672110984',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('Детский лагерь «ЗооМастерские»',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('+74992555763',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('Центр воспроизводства',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('+79629713245',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('Для заказа экскурсий',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('+74992555375',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Divider(
                                height: 1,
                                color: Color(AppTextColor),
                                thickness: 1,
                              ),
                              Text('E-mail',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 26,
                                      color: Color(AppTextColor))),
                              Divider(
                                height: 1,
                                color: Color(AppTextColor),
                                thickness: 1,
                              ),
                              SizedBox(height: 16),
                              Column(children: [
                                Text('Пресс-служба',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('b.saraliev@moscowzoo.ru',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('Для волонтеров',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('volonter@moscowzoo.ru',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('По вопросам опекунства',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('zoofriends@moscowzoo.ru',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text(
                                    'По вопросам сотрудничества и реализации спонсорских и благотворительных программ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('partnership@moscowzoo.ru',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text(
                                    'Дежурно-диспетчерская служба (по вопросам оповещения)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('pcn@moscowzoo.ru',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('Администрация',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('zoopark@culture.mos.ru',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('Для заказа экскурсий',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('education@moscowzoo.ru',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('Центр воспроизводства',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('info@moscowzoo.center',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('По вопросам приобретения животных',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('m.galeshchuk@moscowzoo.ru',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                              Column(children: [
                                Text('Клуб Друзей Московского зоопарка',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(AppTextColor))),
                                Text('zoofriends@moscowzoo.ru',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.yellow))
                              ]),
                              SizedBox(height: 12),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
