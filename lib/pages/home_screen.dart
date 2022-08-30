import 'package:assignment/routes/route_helper.dart';
import 'package:assignment/utils/colors.dart';
import 'package:assignment/utils/show_custom_snackbar.dart';
import 'package:assignment/widget/app_text_field.dart';
import 'package:assignment/widget/icon_and_text_widget.dart';
import 'package:assignment/widget/numeric_step_button.dart';
import 'package:assignment/widget/services.dart';
import 'package:assignment/widget/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectedDate = DateTime.now();
  var searchDate = TextEditingController();
  var searchTime = TextEditingController();
  var startPosition = TextEditingController();
  var destination = TextEditingController();
  int adultsCount = 0;
  int inflantsCount = 0;

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        searchDate.value = TextEditingValue(text: picked.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
                top: Dimensions.height10 - 2,
                left: Dimensions.width10,
                right: Dimensions.width10),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                      bottomLeft: Radius.circular(Dimensions.radius20)),
                  color: AppColors.greyColor1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7.0, top: 7, bottom: 7),
                    child: Container(
                      height: Dimensions.height30 * 2.3,
                      width: Dimensions.height30 * 2.3,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://randomuser.me/api/portraits/men/11.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 5.0, top: 7, bottom: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Hi Sanjay',
                              style: TextStyle(
                                  color: AppColors.mainVioletColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          SizedBox(height: Dimensions.height30),
                          const Text(
                            "Welcome to Organisation",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                                fontSize: 11.5),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 15.0, left: 45, top: 7, bottom: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.notifications,
                              color: AppColors.mainVioletColor),
                          SizedBox(height: Dimensions.height20),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius20),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1),
                                    color: Colors.white,
                                  )
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text("Myself",
                                      style:
                                          TextStyle(color: AppColors.blackColor)),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: AppColors.mainVioletColor,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ),
        SizedBox(height: Dimensions.height10),

        //--- 2nd design search with start and destination location.
        Padding(
          padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
          child: Container(
              height: Dimensions.height45*9.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                      bottomLeft: Radius.circular(Dimensions.radius20)),
                  color: AppColors.greyColor1),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        AppTextField(
                            textController: startPosition,
                            hintText: "Starting point",
                            textInput: true,
                            color: AppColors.mainGreenColor),
                        SizedBox(height: Dimensions.height20),
                        AppTextField(
                            textController: destination,
                            hintText: "Destination",
                            textInput: false,
                            color: AppColors.mainVioletColor),
                      ],
                    ),
                    SizedBox(height: Dimensions.height15),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("Primary services",
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: Dimensions.height15),
                    Row(
                      children: [
                        ServiceData(text: "Bus", icon: Icons.bus_alert_outlined, color: AppColors.mainVioletColor),
                        SizedBox(height: Dimensions.height15),
                        ServiceData(text: "Train", icon: Icons.train, color: AppColors.mainVioletColor),
                        SizedBox(height: Dimensions.height15),
                        ServiceData(text: "Metro", icon: Icons.directions_train_outlined, color: AppColors.mainVioletColor),
                      ],
                    ),
                    SizedBox(height: Dimensions.height15),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("Secondary services",
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: Dimensions.height15),
                    Row(
                      children: [
                        ServiceData(text: "Cab", icon: Icons.car_rental_outlined, color: AppColors.mainVioletColor),
                        SizedBox(height: Dimensions.height15),
                        ServiceData(text: "Auto", icon: Icons.auto_awesome, color: AppColors.mainVioletColor),
                        SizedBox(height: Dimensions.height15),
                        ServiceData(text: "Moto", icon: Icons.electric_bike, color: AppColors.mainVioletColor),
                      ],
                    ),
                  ],

                ),

              ),

          ),
        ),
        SizedBox(height: Dimensions.height10),

        //--- parking container
        Padding(padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
        child: Container(
          height: Dimensions.height45+10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                  bottomRight: Radius.circular(Dimensions.radius20),
                  bottomLeft: Radius.circular(Dimensions.radius20)),
              color: AppColors.greyColor1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: IconAndTextWidget(icon: Icons.location_on,
                      text: "Parking", iconColor: AppColors.mainVioletColor),
                ),

              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: Dimensions.width30*4,
                    height: Dimensions.height30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius30),
                        color: AppColors.mainGreenColor
                    ),
                    child: Center(
                        child: SmallText(
                          text: "Book Parking",
                          size: Dimensions.font16-2,
                          color: Colors.black)),
                  ),
                ),
              ),
            ],
          ),
        ),),

        SizedBox(height: Dimensions.height10),

        //--scheduled time and data view

        Padding(padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
          child:  Container(
            height: Dimensions.height45+40,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                    bottomRight: Radius.circular(Dimensions.radius20),
                    bottomLeft: Radius.circular(Dimensions.radius20)),
                color: AppColors.greyColor1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 8.0),
                  child: Text("Scheduled Date & Time",
                    style: TextStyle(
                        color: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
                ),
                //SizedBox(width: Dimensions.height10+5),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 12, bottom: 5),
                  child: Row(
                    children: [
                      //-- calender and time picker data
                      Container(
                        width: Dimensions.width30*5.5,
                        height: Dimensions.height45,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              left: BorderSide(color: AppColors.mainVioletColor, width: 2)
                          ),
                        ),
                        child: TextField(
                          obscureText: false,
                          controller: searchDate,
                          maxLength: 10,
                          maxLines: 1,
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            _selectDate(context);},
                          decoration: InputDecoration(
                              hintText: "02/02/2022",
                              counterText: "",
                              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              suffixIcon: const Icon(Icons.date_range,color: AppColors.mainVioletColor),
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

                      SizedBox(width: Dimensions.width5),

                      //--- time picker data
                      Container(
                        width: Dimensions.width30*5.5,
                        height: Dimensions.height45,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              left: BorderSide(color: AppColors.mainVioletColor, width: 2)
                          ),
                        ),
                        child: TextField(
                          obscureText: false,
                          controller: searchTime,
                          maxLength: 10,
                          readOnly: true,
                          maxLines: 1,
                          onTap: () async{
                            FocusScope.of(context).unfocus();
                            TimeOfDay time = TimeOfDay.now();
                            TimeOfDay? picked = await showTimePicker(context: context, initialTime: time);
                            if (picked != null && picked != time) {
                              searchTime.text = picked.format(context);  // add this line.
                              setState(() {
                                time = picked;
                              });
                            }},
                          decoration: InputDecoration(
                              hintText: "01:00 AM",
                              counterText: "",
                              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              suffixIcon: const Icon(Icons.access_time_outlined,color: AppColors.mainVioletColor),
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

                    ],
                  ),
                )
              ],
            ),
             )
          ),
          SizedBox(height: Dimensions.height10),

          //-- passengers card details.
          Padding(padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
            child: Container(
              height: Dimensions.height45+100,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                      bottomLeft: Radius.circular(Dimensions.radius20)),
                  color: AppColors.greyColor1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Padding(padding: EdgeInsets.only(left: 22, top: 15, bottom: 1),
                  child: Text("Passengers", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold))),
                  Padding(padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Expanded(
                            //height: Dimensions.height30*3,
                            child: Card(
                              child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 5, right: 5, top: 15),
                                      child: IconAndTextWidget(icon: Icons.person, text: "No.of Adults", iconColor: AppColors.mainVioletColor)),
                                  SizedBox(height: Dimensions.height10),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0, left: 20.0),
                                    child: NumericStepButton(onChanged: (value){
                                      adultsCount = value;
                                    }),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Expanded(
                            //height: Dimensions.height30*3,
                            child: Card(
                              child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 5, right: 5, top: 15),
                                      child: IconAndTextWidget(icon: Icons.person, text: "No.of infants", iconColor: AppColors.mainVioletColor)),
                                  SizedBox(height: Dimensions.height10),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0, left: 20.0),
                                    child: NumericStepButton(onChanged: (value){
                                      inflantsCount = value;
                                    }),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),)
                ],
              ),
            ),
          ),

        //--- Button
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 15, top: 15),
          child: Container(
            height: Dimensions.height30+15,
            child: RaisedButton(
              onPressed: () {
                if(startPosition.text.toString().isEmpty){
                  showCustomSnackBar("Start point required", title: "Start Point");
                } else if(destination.text.toString().isEmpty){
                  showCustomSnackBar("Destination required", title: "Destination");
                } else if(searchDate.text.toString().isEmpty){
                  showCustomSnackBar("Scheduled Date required", title: "Scheduled Details");
                } else if(searchTime.text.toString().isEmpty){
                  showCustomSnackBar("Scheduled Time required", title: "Scheduled Details");
                } else if(adultsCount == 0){
                  showCustomSnackBar("Passengers details required", title: "Passengers");
                } else if(inflantsCount == 0){
                  showCustomSnackBar("Passengers details required", title: "Passengers");
                } else{
                    Get.toNamed(RouteHelper.getSecondPage(startPosition.text.toString(), destination.text.toString(), searchDate.text, searchTime.text, adultsCount, inflantsCount));
                }
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF9945ff),
                      Color(0xFF1976D2),
                      Color(0xFF13f8a6),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: Text(
                    'Proceed to book',
                    textAlign: TextAlign.center,
                    style: TextStyle(color:Colors.white, fontSize: Dimensions.font26-10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        )

      ],
    ),
            )));
  }
}
