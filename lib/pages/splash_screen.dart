import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nexxora/pages/auth/register.dart';
import 'package:nexxora/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 3),
      (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Register()),
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xff020614), Color(0xff020614)],
          ),
        ),
        child: Container(
          height: size.height,
          width: size.width,
          child: Image.asset('assets/images/nexorapng.png'),
        ),
      ),
    );
  }
}
