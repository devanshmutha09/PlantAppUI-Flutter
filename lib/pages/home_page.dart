import 'package:flutter/material.dart';
import 'package:plant_app_ui/pages/categories.dart';
import 'package:plant_app_ui/pages/productcard.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 10,
              right: 25,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.menu, color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Mia',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Take Care of Your Plants!',
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF234c11),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: (Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        )),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black12,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.black45, size: 28),
                        SizedBox(width: 15),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.black45, fontSize: 20),
                        ),
                        Spacer(),
                        Icon(Icons.mic_none, color: Colors.black45, size: 28),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Categories(),
                SizedBox(height: 30),
                ProductCard(),
                SizedBox(height: 30),

                //ShippingBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
