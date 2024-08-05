import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:last_hackthon/ViewModel/BottomNavi.dart';

class Bottomnavi extends StatelessWidget {
  Bottomnavi({super.key});

  final BottomnaviController controller = Get.put(BottomnaviController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          onTap: controller.onTapNav,
          index: controller.selectedIndex.value,
          height: 60,
          animationDuration: const Duration(milliseconds: 250),
          backgroundColor: Color.fromARGB(255, 13, 2, 24),
          color: Color.fromARGB(37, 46, 23, 46),
          items: [
            const Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 2, 253, 35),
            ),
            Image.asset('assets/addcard.png',scale: 2, color: Color.fromARGB(255, 252, 215, 4),),
            Image.asset(
              'assets/Brower.png',scale: 2,
              color: Color.fromARGB(255, 206, 193, 16),
            ),
            Image.asset(
              'assets/order.png',scale: 2,
              color: Color.fromARGB(255, 214, 211, 13),
            ),
            Image.asset(
              'assets/profile.png',scale: 2,
              color: Color.fromARGB(255, 209, 173, 13),
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.pages[controller.selectedIndex.value],
      ),
    );
  }
}