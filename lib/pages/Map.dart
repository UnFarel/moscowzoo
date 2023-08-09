import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart' show PhotoView;
import 'package:vector_math/vector_math_64.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Image.asset('assets/images/bg.jpg',
            fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          Positioned(
            child: Center(child: InteractiveViewer(
              maxScale: 2.5,
              minScale: 0.01,
              constrained: false,
              transformationController: TransformationController(
                  Matrix4.identity()
                    ..translate(-700.0, -850.0, 1)
                    ..scale(0.6)
              ),
              child: Image.asset(
                'assets/images/zoomapnew.jpg', fit: BoxFit.none,
              ),
            ),))
    ]));
  }
}
