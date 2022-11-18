import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:io';
import 'package:learning_to_read/screens/content.dart';
import 'package:learning_to_read/screens/splash_screen.dart';
import 'package:learning_to_read/styles/config.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTheme.addListener(() {
      print('changes');
      setState(() {});
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: currentTheme.currentTheme(),
      theme: ThemeData(
        primaryColor: Colors.tealAccent,
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.tealAccent,
        primarySwatch: Colors.teal,
      ),
      home: ContentPage(),
    );
  }
}
