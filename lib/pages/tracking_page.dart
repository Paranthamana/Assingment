import 'package:assignment/routes/route_helper.dart';
import 'package:assignment/utils/colors.dart';
import 'package:assignment/utils/dimensions.dart';
import 'package:assignment/widget/icon_and_text_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({Key? key}) : super(key: key);

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(children: [
                  SizedBox(height: Dimensions.height10),
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

                  SizedBox(height: Dimensions.height20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: Dimensions.height45 * 12.6,
                      width: double.maxFinite,
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(Dimensions.radius20),
                                topRight: Radius.circular(Dimensions.radius20)),
                              color: AppColors.mainVioletColor),
                            height: Dimensions.height45+10,
                            width: double.maxFinite,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Bus + Car", style: TextStyle(color: Colors.white)),
                                  Text("145/-", style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: Dimensions.height10),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Container(
                                  height: Dimensions.height45-5,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(Dimensions.radius20),
                                      topLeft: Radius.circular(Dimensions.radius20),
                                      bottomRight: Radius.circular(Dimensions.radius20),
                                      bottomLeft: Radius.circular(Dimensions.radius20)),
                                    color: Colors.white
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 25.0),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.add_location_sharp, color: AppColors.mainGreenColor),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10.0),
                                                child: Text("Chennai central (11.00 AM - 11.20 AM)",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                  ),),
                                              )
                                            ],
                                          ),
                                        ),
                                      )

                                    ],
                                  ) /*IconAndTextWidget(icon: Icons.add_location_sharp,
                                      text: "Chennai central (11.00 AM - 11.20 AM)",
                                      iconColor: AppColors.mainGreenColor, size: 16),*/
                                ),
                                const DottedLine(
                                  dashLength: 5,
                                  dashGapLength: 7,
                                  lineThickness: 3,
                                  dashColor: AppColors.mainGreenColor,
                                  direction: Axis.vertical,
                                  lineLength: 90,
                                ),
                                Container(
                                    height: Dimensions.height45-5,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(Dimensions.radius20),
                                            topLeft: Radius.circular(Dimensions.radius20),
                                            bottomRight: Radius.circular(Dimensions.radius20),
                                            bottomLeft: Radius.circular(Dimensions.radius20)),
                                        color: Colors.white
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 25.0),
                                            child: Row(
                                              children: const [
                                                Icon(Icons.add_location_sharp, color: AppColors.greySerViceColor),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10.0),
                                                  child: Text("Adyar (11.00 AM - 11.40 AM)",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                    ),),
                                                )
                                              ],
                                            ),
                                          ),
                                        )

                                      ],
                                    ) /*IconAndTextWidget(icon: Icons.add_location_sharp,
                                      text: "Chennai central (11.00 AM - 11.20 AM)",
                                      iconColor: AppColors.mainGreenColor, size: 16),*/
                                ),
                                const DottedLine(
                                  dashLength: 5,
                                  dashGapLength: 7,
                                  lineThickness: 3,
                                  dashColor: AppColors.mainGreenColor,
                                  direction: Axis.vertical,
                                  lineLength: 90,
                                ),
                                Container(
                                    height: Dimensions.height45-5,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(Dimensions.radius20),
                                            topLeft: Radius.circular(Dimensions.radius20),
                                            bottomRight: Radius.circular(Dimensions.radius20),
                                            bottomLeft: Radius.circular(Dimensions.radius20)),
                                        color: Colors.white
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 25.0),
                                            child: Row(
                                              children: const [
                                                Icon(Icons.add_location_sharp, color: AppColors.greySerViceColor),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10.0),
                                                  child: Text("Thiruvanmiyur (11.20 AM - 11.40 AM)",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                    ),),
                                                )
                                              ],
                                            ),
                                          ),
                                        )

                                      ],
                                    ) /*IconAndTextWidget(icon: Icons.add_location_sharp,
                                      text: "Chennai central (11.00 AM - 11.20 AM)",
                                      iconColor: AppColors.mainGreenColor, size: 16),*/
                                ),
                                const DottedLine(
                                  dashLength: 5,
                                  dashGapLength: 7,
                                  lineThickness: 3,
                                  dashColor: AppColors.mainGreenColor,
                                  direction: Axis.vertical,
                                  lineLength: 90,
                                ),
                                Container(
                                    height: Dimensions.height45-5,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(Dimensions.radius20),
                                            topLeft: Radius.circular(Dimensions.radius20),
                                            bottomRight: Radius.circular(Dimensions.radius20),
                                            bottomLeft: Radius.circular(Dimensions.radius20)),
                                        color: Colors.white
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 25.0),
                                            child: Row(
                                              children: const [
                                                Icon(Icons.add_location_sharp, color: AppColors.mainVioletColor),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10.0),
                                                  child: Text("Velachery (11.20 AM - 11.40 AM)",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                    ),),
                                                )
                                              ],
                                            ),
                                          ),
                                        )

                                      ],
                                    ) /*IconAndTextWidget(icon: Icons.add_location_sharp,
                                      text: "Chennai central (11.00 AM - 11.20 AM)",
                                      iconColor: AppColors.mainGreenColor, size: 16),*/
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 15, top: 15),
                    child: Container(
                      height: Dimensions.height30+15,
                      child: RaisedButton(
                        onPressed: () {
                          Get.toNamed(RouteHelper.getInitial());
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
                              style: TextStyle(color:Colors.white, fontSize: Dimensions.font26-5, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                 ]
                )
            )
        )
    );
  }
}
