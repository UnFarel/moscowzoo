import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Text('Yes'),
      )),
    );
  }
}
