import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';

class AppTextField extends StatelessWidget {

  final TextEditingController textController;
  final String hintText;
  //final IconData icon;
  bool isObscure;
  Color? color;
  bool bgSelected;
  bool textInput;

  AppTextField({Key? key, required this.textController,
    required this.hintText,
    this.isObscure=false,
    this.color = const Color(0xFF332d2b),
    this.bgSelected=false,
    this.textInput = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height45+5,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: Dimensions.height20, right: Dimensions.height20),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              left: BorderSide(color: color!, width: 2)
          ),
          /*borderRadius: BorderRadius.circular(Dimensions.radius15),
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(1,1),
                color: Colors.grey.withOpacity(0.2)
            ),
          ]*/
      ),child: TextField(
      obscureText: isObscure?true:false,
      controller: textController,
      textInputAction: textInput?TextInputAction.next:TextInputAction.done,
      decoration: InputDecoration(
          hintText: hintText,
          //prefixIcon: Icon(icon,color: AppColors.mainVioletColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius15),
              borderSide: const BorderSide(
                  width: 1.0,
                  color: Colors.white
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius15),
              borderSide: const BorderSide(
                  width: 1.0,
                  color: Colors.white
              )
          )
      ),
    ),
    );
  }
}