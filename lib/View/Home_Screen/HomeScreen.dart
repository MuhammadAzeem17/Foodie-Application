import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:last_hackthon/View/Home_Screen/card.dart';
import 'package:last_hackthon/Wigets/cardWiget.dart';
import 'package:last_hackthon/Wigets/discountWiget.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: Image.asset(
              'assets/homeBack.png',
              fit: BoxFit.cover,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 2),
                      child: Image.asset('assets/Drawer.png',scale: 2,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 2),
                      // child: Image.asset('assets/',scale: 2,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35, right: 20),
                      child: Image.asset('assets/icon_run_cicle.png',scale: 3,),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(child: Image.asset('assets/searchbar.png',scale: 2,)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 24),
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Cardwidget(
                            image: 'assets/Burger.png',heading: 'Burger'),
                      ),
                      Cardwidget(
                          image: 'assets/Cake.png', heading: 'Dessert'),
                      Cardwidget(
                          image: 'assets/Maxico.png', heading: 'Mexican'),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Cardwidget(
                            image: 'assets/Shushi.png',
                            heading: 'Sushi'),
                      )
                    ],
                  ),
                ),
                  const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10,),
                          child: Discountwidget(
                              heading: '30% OFF',
                              image: 'assets/pasta.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Discountwidget(
                              heading: '30% OFF',
                              image: 'assets/pasta.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Discountwidget(
                              heading: '30% OFF',
                              image: 'assets/pasta.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                 Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'Fastest near you',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child:InkWell(
                      onTap: () {
                        Get.to(const Cardscreen());
                      },
                      child: Image.asset('assets/kinka.png', scale: 2.10,)),
                  )),
                  
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset('assets/kinka.png', scale: 2.10,),
                  )),
                  
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset('assets/kinka.png', scale: 2.10,),
                  )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
