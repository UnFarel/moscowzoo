import 'package:flutter/material.dart';

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
                children: [Container(), Container(), Container(), Container()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
