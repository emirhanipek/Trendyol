import 'package:flutter/material.dart';
import 'package:trendyol_login/pages/count.dart';
import 'package:trendyol_login/pages/loginPages.dart';
import 'package:trendyol_login/pages/registerPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterDemo ',
      home: MyWidget(),
    );
  }
}
