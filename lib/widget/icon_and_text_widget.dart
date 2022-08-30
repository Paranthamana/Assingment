import 'package:assignment/utils/colors.dart';
import 'package:assignment/utils/dimensions.dart';
import 'package:assignment/widget/small_text.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  double size;

  IconAndTextWidget({Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
    this.size = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimensions.iconSize24),
        SizedBox(width: 7),
        //SmallText(text: text, color: AppColors.blackColor, size: size==0?Dimensions.font20:size),
        Text(text ,style: TextStyle(color: AppColors.blackColor, fontSize: size==0?Dimensions.font20:size))
      ],
    );
  }
}
