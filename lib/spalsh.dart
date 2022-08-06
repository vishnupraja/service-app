import 'dart:async';

import 'package:flutter/material.dart';
import 'package:serviceapp/introducation_slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Introslider(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/Splashscreen.png",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Center(
                  child: Image.asset(
                    "assets/splash.png",
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
