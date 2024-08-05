
import 'package:get/get.dart';
import 'package:last_hackthon/View/Home_Screen/Browser.dart';
import 'package:last_hackthon/View/Home_Screen/CartScreen.dart';
import 'package:last_hackthon/View/Home_Screen/HomeScreen.dart';
import 'package:last_hackthon/View/Home_Screen/ProfileScreen.dart';
import 'package:last_hackthon/View/Order_Detail/order.dart';

class BottomnaviController extends GetxController {
  var selectedIndex = 0.obs;
  List pages = [
    const Homescreen(),
    const Browsescreen(),
    const Cartscreen(),
    const Orderscreen(),
    const Profilescreen(),
  ];
  void onTapNav(int index) {
    selectedIndex.value = index;
  }
}