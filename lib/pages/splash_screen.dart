import 'dart:async';

import 'package:assignment/routes/route_helper.dart';
import 'package:assignment/utils/colors.dart';
import 'package:assignment/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,duration:
    const Duration(seconds: 10))..forward();

    animation =  CurvedAnimation(
        parent: controller,
        curve: Curves.ease);

    Timer(
      const Duration(seconds: 5),
          ()=>Get.offNamed(RouteHelper.getInitial()),
    );
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(scale: animation,
              child: Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: Dimensions.spalshImg,
                    height: 100,))),
          const SizedBox(height: 20,),
          Center(child: Text("Assignment",
              style: TextStyle(
                  color: AppColors.mainVioletColor,
                  fontSize: Dimensions.height45,
                  fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
