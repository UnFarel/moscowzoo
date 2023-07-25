import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart' show PhotoView;

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset(
                'assets/images/zoomapnew.jpg', // Замените на путь к вашему изображению в папке assets
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
