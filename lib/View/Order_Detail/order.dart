import 'package:flutter/material.dart';

class Orderscreen extends StatelessWidget {
  const Orderscreen({super.key});

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
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Icon(
                    Icons.arrow_back_ios,size: 25,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    'Order detail', 
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset('assets/order2.png',scale: 2,),
                Image.asset('assets/order3.png',scale: 2,),
                Image.asset('assets/order4.png',scale: 2,),
                Center(child: Image.asset('assets/checkout.png',scale: 2,))
              ],
            ),
          ),
        ],
      ),
    );
  }
}