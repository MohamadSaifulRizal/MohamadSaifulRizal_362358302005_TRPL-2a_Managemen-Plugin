import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:manajemen_plugin/red_text_widget.dart';
import 'package:manajemen_plugin/widget/filter_carousel.dart';
import 'package:manajemen_plugin/widget/takepicture_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MaterialApp(
    theme: ThemeData.dark(),
      home: TakepictureScreen(
        camera: firstCamera,
      ),
  ));

  runApp( 
const MaterialApp( 
home: PhotoFilterCarousel(), 
debugShowCheckedModeBanner: false, 
), 
); 
}