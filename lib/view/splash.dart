import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:vitas/view/login.dart';
import 'package:vitas/view/login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.off(() => const Login());
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/splash.png",
                  height: 400.0,
                  width: 400.0,
                ),
                LinearPercentIndicator(
                  percent: 100 / 100,
                  animation: true,
                  animationDuration: 3000,
                  progressColor: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
