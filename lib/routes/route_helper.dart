import 'package:assignment/pages/home_screen.dart';
import 'package:assignment/pages/second_page.dart';
import 'package:assignment/pages/splash_screen.dart';
import 'package:assignment/pages/tracking_page.dart';
import 'package:get/get.dart';
class RouteHelper{
  static const String splashPage = "/splash-page";
  static const String secondPage = "/second-page";
  static const String trackingPage = "/tracking-page";
  static const String initial ="/";

  static String getSplashPage()=>'$splashPage';
  static String getInitial()=>"$initial";
  static String getSecondPage(String startPoints, String destination,
      String date,
      String time,
      int adults,
      int child)=>"$secondPage?startPoint=$startPoints&destination=$destination&date=$date&time=$time/*&adults=$adults&child$child*/";
  static String getTrackingPage()=>"$trackingPage";

  static List<GetPage> routes =[
  GetPage(name: splashPage, page: ()=>const SplashScreen(), transition: Transition.leftToRight),
  GetPage(name: initial, page: ()=>const HomePage(),transition: Transition.leftToRight),
  GetPage(name: trackingPage, page: ()=>const TrackingPage(),transition: Transition.leftToRight),

  GetPage(name: secondPage, page: (){
    var startPoint =Get.parameters['startPoint'];
    var destination =Get.parameters['destination'];
    var date =Get.parameters['date'];
    var time =Get.parameters['time'];
    var adults =Get.parameters['adults'];
    var child =Get.parameters['child'];
    return SecondPage(startPoint: startPoint!, destination: destination!, date: date!, time: time!, /*adults: int.parse(adults!), child: int.parse(child!)*/);
  },transition: Transition.leftToRight),

  ];
}