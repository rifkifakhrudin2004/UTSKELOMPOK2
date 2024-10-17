import 'package:flutter/material.dart';
import 'models/ImagesData.dart';
import 'home_page.dart';
import 'camera_page.dart';
import 'storage_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<ImageData> imageList = []; // Daftar untuk menyimpan data gambar

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/camera': (context) => CameraPage(imageList: imageList), // Mengirimkan imageList
        '/storage': (context) => StoragePage(imageList: imageList), // Mengirimkan imageList
      },
    );
  }
}