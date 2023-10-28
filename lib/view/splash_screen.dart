import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:unicode_lp_tasks/helper/util.dart';
import 'package:unicode_lp_tasks/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //double _logoOpacity = 0.0;
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1,
            height: MediaQuery.sizeOf(context).height * 0.4,
            color: Theme.of(context).primaryColor,
            child: Image.asset(
              "assets/logo.png",
              color: Colors.black,
            ),
          ),
          Text(
            "InnSight",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
          ),
          vSize(20),
          Text(
            "Find Your Perfect Place To Stay",
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
