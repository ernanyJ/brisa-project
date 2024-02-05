import 'package:brisa_project/sidebar.dart';
import 'package:brisa_project/view/homepage.dart';
import 'package:brisa_project/view/driverspage.dart';
import 'package:brisa_project/view/loginpage.dart';
import 'package:get/get.dart';

class Vcontroller extends GetxController {
  var count = 0.obs;

  var pages = [CarsPage(), LoginScreen(), DriversPage()];

  int printIndex() {
    return count.value;
  }
}
