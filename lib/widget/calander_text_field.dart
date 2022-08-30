import 'package:assignment/utils/colors.dart';
import 'package:assignment/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalenderTextField extends StatefulWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  Color? color;
  bool bgSelected;
  //bool textInput;
  //bool keyBoardType;

  CalenderTextField({Key? key, required this.textController,
    required this.hintText,
    this.isObscure=false,
    this.color = const Color(0xFF332d2b),
    this.bgSelected=false,
    //required this.textInput,
    //required this.keyBoardType,
    required this.icon,
  }) : super(key: key);

  @override
  State<CalenderTextField> createState() => _CalenderTextFieldState();
}

class _CalenderTextFieldState extends State<CalenderTextField> {

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        height: Dimensions.height30+10,
        width: Dimensions.width30+Dimensions.width30*4.5,
        margin: EdgeInsets.only(left: Dimensions.height10, right: Dimensions.height10),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
              left: BorderSide(color: AppColors.mainVioletColor, width: 2)
          ),
        ),child: TextField(
        obscureText: widget.isObscure?true:false,
        controller: widget.textController,
        maxLength: 10,
        maxLines: 1,
        //textInputAction: widget.textInput?TextInputAction.next:TextInputAction.done,
        //keyboardType: widget.keyBoardType?TextInputType.text:TextInputType.number,
        decoration: InputDecoration(
            hintText: widget.hintText,
            counterText: "",
            contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            suffixIcon: Icon(widget.icon,color: AppColors.mainVioletColor),
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
      ),
    );
  }
}
