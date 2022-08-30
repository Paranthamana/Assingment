import 'package:assignment/utils/colors.dart';
import 'package:assignment/utils/dimensions.dart';
import 'package:assignment/widget/big_text.dart';
import 'package:flutter/material.dart';

class ServiceData extends StatelessWidget {
  final IconData icon;
  final String text;
  Color? color;
  Color? bgColor;

  ServiceData({Key? key, required this.text,
  this.color,
  required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height45*2,
      width: Dimensions.height45+40,
      margin: EdgeInsets.only(left: Dimensions.height20, right: Dimensions.height20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius15),
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                spreadRadius: 1,
                offset: const Offset(1,1),
                color: Colors.white.withOpacity(0.5)
            ),
          ]
      ),child: Column(
          children: [
            SizedBox(height: Dimensions.height10),
            Icon(icon, color: color, size: Dimensions.iconSize16*2+2),
            SizedBox(height: Dimensions.height15),
            Text( text, style: const TextStyle( color: AppColors.blackColor, fontWeight: FontWeight.bold)),
          ],
    ),
    );
  }
}
