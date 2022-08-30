import 'package:assignment/pages/home_screen.dart';
import 'package:assignment/routes/route_helper.dart';
import 'package:assignment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Assignment',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: AppColors.mainVioletColor
        ),
      initialRoute: RouteHelper.getSplashPage(),
      getPages: RouteHelper.routes,
      home: const HomePage(),
    );
  }
}

