import 'package:brisa_project/view/CarsPage/carspageHD.dart';
import 'package:brisa_project/widgets/RespWidget.dart';
import 'package:brisa_project/view/CarsPage/carspageFHD.dart';
import 'package:brisa_project/view/driverspage.dart';
import 'package:brisa_project/view/loginpage.dart';
import 'package:get/get.dart';

class Vcontroller extends GetxController {
  var count = 0.obs;

  var pages = [
    LoginScreen(),
    ResponsiveWidget(
      FHD: CarsPageFHD(),
      HD: CarsPageHD(),
    ),
    DriversPage()
  ];

  int printIndex() {
    return count.value;
  }
}
