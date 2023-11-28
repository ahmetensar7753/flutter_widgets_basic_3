import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_deneme3/custom_scroll_and_slivers.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  log("running main method");
  runApp(const MyApp());
  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    log("MyApp build çalıştı");
    return MaterialApp(
      title: "Title",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: const TextTheme(
          // ignore: deprecated_member_use
          headline1: TextStyle(
            color: Colors.purple,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const CollapsableToolBarOrnek(),
      builder: EasyLoading.init(),
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}
