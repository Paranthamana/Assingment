import 'package:assignment/routes/route_helper.dart';
import 'package:assignment/utils/colors.dart';
import 'package:assignment/utils/dimensions.dart';
import 'package:assignment/widget/big_text.dart';
import 'package:assignment/widget/icon_and_text_widget.dart';
import 'package:assignment/widget/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  final String startPoint;
  final String destination;
  final String date;
  final String time;
 /* final int adults;
  final int child;*/
  const SecondPage({Key? key, required this.startPoint,
    required this.destination,
  required this.date,
  required this.time,
 /* required this.adults,
  required this.child*/}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                //--- Header
                Padding(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10 - 2,
                      left: Dimensions.width10,
                      right: Dimensions.width10),
                  child: Container(
                    //height: Dimensions.listViewTextContSize,
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
                          padding:
                          const EdgeInsets.only(left: 7.0, top: 7, bottom: 7),
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
                            padding: const EdgeInsets.only(
                                left: 5.0, top: 7, bottom: 10.0),
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
                                            style: TextStyle(
                                                color: AppColors.blackColor)),
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

                //--- From and to route Container
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
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                              child: Row(
                                children: [
                                  Text(startPoint,
                                      style: const TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: Dimensions.width10),
                                  const Icon(Icons.arrow_forward,
                                      color: AppColors.blackColor),
                                  SizedBox(width: Dimensions.width10),
                                   Text(destination,
                                      style: const TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 145.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white70,
                                        radius: 15,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: const Icon(Icons.edit, size: 18),
                                          color: AppColors.mainVioletColor,
                                          onPressed: () {
                                            Get.toNamed(RouteHelper.getInitial());
                                          },
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: Dimensions.height10 + 5),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Row(
                                children: [
                                  IconAndTextWidget(
                                    icon: Icons.date_range,
                                    text: date,
                                    iconColor: AppColors.mainVioletColor,
                                    size: 13,
                                  ),
                                  SizedBox(width: Dimensions.width10),
                                  IconAndTextWidget(
                                    icon: Icons.access_time_outlined,
                                    text: time,
                                    iconColor: AppColors.mainVioletColor,
                                    size: 13,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: Dimensions.height10 + 5),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, right: 7, bottom: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(
                                      icon: Icons.add_road,
                                      text: "Single journey",
                                      iconColor: AppColors.mainVioletColor,
                                      size: 13),
                                  SizedBox(width: Dimensions.width10),
                                  IconAndTextWidget(
                                      icon: Icons.person,
                                      text: "02 Adults",
                                      iconColor: AppColors.mainVioletColor,
                                      size: 14.5),
                                  SizedBox(width: Dimensions.width10),
                                  IconAndTextWidget(
                                      icon: Icons.child_friendly,
                                      text: "01 Infants",
                                      iconColor: AppColors.mainVioletColor,
                                      size: 13),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(height: Dimensions.height10),
                //---Available packages
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.width10, right: Dimensions.width10),
                  child: Container(
                    height: Dimensions.height45 * 12.6,
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
                          const Padding(
                              padding: EdgeInsets.only(left: 18.0),
                              child: Text("Available Packages",
                                  style: TextStyle(color: AppColors.blackColor, fontSize: 15, fontWeight: FontWeight.bold))),
                          SizedBox(height: Dimensions.height10),
                          SizedBox(
                            height: Dimensions.height45*5.6,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    children: [
                                      SizedBox(height: Dimensions.height10),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 22.0),
                                        child: Row(
                                          children: [
                                            const Text("Bus",
                                                style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold)),
                                            SizedBox(width: Dimensions.width10),
                                            const Icon(Icons.arrow_forward,
                                                color: AppColors.blackColor),
                                            SizedBox(width: Dimensions.width10),
                                            const Text("Car",
                                                style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold)),
                                            const Padding(
                                                padding: EdgeInsets.only(left: 165),
                                                child: Text("₹ 145/-",
                                                    style: TextStyle(
                                                        color: AppColors.mainVioletColor,
                                                        fontSize: 18))),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: Dimensions.height10+10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: Dimensions.height45+35,
                                            width: Dimensions.width30+35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    Dimensions.radius15),
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 1,
                                                      spreadRadius: 1,
                                                      offset: Offset(0, 1),
                                                      color: AppColors.greySerViceColor),
                                                ]
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(height: Dimensions.height10),
                                                Icon(Icons.bus_alert_rounded, color: AppColors.mainVioletColor, size: Dimensions.iconSize16*2+2),
                                                SizedBox(height: Dimensions.height15),
                                                const Text( "Bus-Ac", style: TextStyle( color: AppColors.blackColor, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                          const Icon(Icons.arrow_forward,
                                              color: AppColors.blackColor),
                                          Container(
                                            height: Dimensions.height45+35,
                                            width: Dimensions.width30+35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    Dimensions.radius15),
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 1,
                                                      spreadRadius: 1,
                                                      offset: Offset(0, 1),
                                                      color: AppColors.greySerViceColor),
                                                ]
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(height: Dimensions.height10),
                                                Icon(Icons.bus_alert_rounded, color: AppColors.mainVioletColor, size: Dimensions.iconSize16*2+2),
                                                SizedBox(height: Dimensions.height15),
                                                const Text("Bus-Ord", style: TextStyle( color: AppColors.blackColor, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                          ),

                                          const Icon(Icons.arrow_forward,
                                              color: AppColors.blackColor),
                                          Container(
                                            height: Dimensions.height45+35,
                                            width: Dimensions.width30+35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    Dimensions.radius15),
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 1,
                                                      spreadRadius: 1,
                                                      offset: Offset(0, 1),
                                                      color: AppColors.greySerViceColor),
                                                ]
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(height: Dimensions.height10),
                                                Icon(Icons.car_rental_sharp, color: AppColors.mainVioletColor, size: Dimensions.iconSize16*2+2),
                                                SizedBox(height: Dimensions.height15),
                                                const Text( "Car", style: TextStyle( color: AppColors.blackColor, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: Dimensions.height5-3),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text("₹35/-", style: TextStyle(color: Colors.grey)),
                                          Text("₹35/-", style: TextStyle(color: Colors.grey)),
                                          Text("₹35/-", style: TextStyle(color: Colors.grey)),
                                        ],
                                      ),
                                      SizedBox(height: Dimensions.height5-3),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 15.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            RaisedButton(onPressed: (){},
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                                padding: const EdgeInsets.all(0.0),
                                                color: AppColors.mainGreenColor,
                                                child: Ink(
                                                  decoration: const BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(80.0)),
                                                  ),
                                                  child: Container(
                                                    constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Book',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(color:Colors.black, fontSize: Dimensions.font26-10, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                )
                                            ),
                                            SizedBox(width: Dimensions.width10),
                                            RaisedButton(onPressed: (){
                                              Get.toNamed(RouteHelper.getTrackingPage());
                                            },
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                                padding: const EdgeInsets.all(0.0),
                                                color: AppColors.greySerViceColor,
                                                child: Ink(
                                                  decoration: const BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(80.0)),
                                                  ),
                                                  child: Container(
                                                    constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Details',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(color:Colors.black, fontSize: Dimensions.font26-10, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                )
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: Dimensions.height10-9),
                          SizedBox(
                            height: Dimensions.height45*5.6,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    children: [
                                      SizedBox(height: Dimensions.height10),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 22.0),
                                        child: Row(
                                          children: [
                                            const Text("Bus",
                                                style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold)),
                                            SizedBox(width: Dimensions.width10),
                                            const Icon(Icons.arrow_forward,
                                                color: AppColors.blackColor),
                                            SizedBox(width: Dimensions.width10),
                                            const Text("Train",
                                                style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold)),
                                            const Icon(Icons.arrow_forward,
                                                color: AppColors.blackColor),
                                            SizedBox(width: Dimensions.width10),
                                            const Text("Car",
                                                style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold)),
                                            const Padding(
                                                padding: EdgeInsets.only(left: 85),
                                                child: Text("₹ 145/-",
                                                    style: TextStyle(
                                                        color: AppColors.mainVioletColor,
                                                        fontSize: 18))),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: Dimensions.height10+10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: Dimensions.height45+35,
                                            width: Dimensions.width30+35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    Dimensions.radius15),
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 1,
                                                      spreadRadius: 1,
                                                      offset: Offset(0, 1),
                                                      color: AppColors.greySerViceColor),
                                                ]
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(height: Dimensions.height10),
                                                Icon(Icons.bus_alert_rounded, color: AppColors.mainVioletColor, size: Dimensions.iconSize16*2+2),
                                                SizedBox(height: Dimensions.height15),
                                                const Text( "Bus-Ac", style: TextStyle( color: AppColors.blackColor, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                          const Icon(Icons.arrow_forward,
                                              color: AppColors.blackColor),
                                          Container(
                                            height: Dimensions.height45+35,
                                            width: Dimensions.width30+35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    Dimensions.radius15),
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 1,
                                                      spreadRadius: 1,
                                                      offset: Offset(0, 1),
                                                      color: AppColors.greySerViceColor),
                                                ]
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(height: Dimensions.height10),
                                                Icon(Icons.bus_alert_rounded, color: AppColors.mainVioletColor, size: Dimensions.iconSize16*2+2),
                                                SizedBox(height: Dimensions.height15),
                                                const Text("Bus-Ord", style: TextStyle( color: AppColors.blackColor, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                          ),

                                          const Icon(Icons.arrow_forward,
                                              color: AppColors.blackColor),
                                          Container(
                                            height: Dimensions.height45+35,
                                            width: Dimensions.width30+35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    Dimensions.radius15),
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 1,
                                                      spreadRadius: 1,
                                                      offset: Offset(0, 1),
                                                      color: AppColors.greySerViceColor),
                                                ]
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(height: Dimensions.height10),
                                                Icon(Icons.car_rental_sharp, color: AppColors.mainVioletColor, size: Dimensions.iconSize16*2+2),
                                                SizedBox(height: Dimensions.height15),
                                                const Text( "Car", style: TextStyle( color: AppColors.blackColor, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: Dimensions.height5-3),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text("₹35/-", style: TextStyle(color: Colors.grey)),
                                          Text("₹35/-", style: TextStyle(color: Colors.grey)),
                                          Text("₹35/-", style: TextStyle(color: Colors.grey)),
                                        ],
                                      ),
                                      SizedBox(height: Dimensions.height5-3),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 15.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            RaisedButton(onPressed: (){},
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                                padding: const EdgeInsets.all(0.0),
                                                color: AppColors.mainGreenColor,
                                                child: Ink(
                                                  decoration: const BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(80.0)),
                                                  ),
                                                  child: Container(
                                                    constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Book',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(color:Colors.black, fontSize: Dimensions.font26-10, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                )
                                            ),
                                            SizedBox(width: Dimensions.width10),
                                            RaisedButton(onPressed: (){
                                              Get.toNamed(RouteHelper.getTrackingPage());
                                            },
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                                padding: const EdgeInsets.all(0.0),
                                                color: AppColors.greySerViceColor,
                                                child: Ink(
                                                  decoration: const BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(80.0)),
                                                  ),
                                                  child: Container(
                                                    constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Details',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(color:Colors.black, fontSize: Dimensions.font26-10, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                )
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

