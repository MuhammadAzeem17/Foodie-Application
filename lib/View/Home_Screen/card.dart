import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cardscreen extends StatelessWidget {
  const Cardscreen({super.key});

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
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/resturant.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: InkWell(
                            onTap: () {
                             Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 230),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.linear_scale_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 250),
            child: Image.asset('assets/kinka Detail.png',scale: 2.10,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 20),
            child: Image.asset('assets/2 Button.png',scale: 2.30,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 491,left: 1),
            child: Image.asset('assets/tabbar.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 540, left: 15),
            child: Text(
              'Featured Items',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 17),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 590),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('assets/Udon Miso.png',scale: 2,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Image.asset('assets/Udon Miso.png',scale: 2,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}