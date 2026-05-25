import 'package:flutter/material.dart';
import 'package:nexxora/pages/home_page_alvin.dart';
import 'package:nexxora/pages/splash_screen_akbar.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(), debugShowCheckedModeBanner: false,);
  }
}
