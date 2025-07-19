import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/productmodel.dart';
import 'package:plant_app_ui/pages/home_page.dart';
import 'package:plant_app_ui/pages/propertycard.dart';
import 'package:plant_app_ui/models/dummypropertydata.dart';

class PlantsDetailPage extends StatelessWidget {
  final Plant plant;
  const PlantsDetailPage({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 520,
            decoration: BoxDecoration(
              color: plant.backgroundColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            ),
          ),

          // Plant Image
          Padding(
            padding: const EdgeInsets.only(top: 230, left: 120),
            child: Positioned(
              child: Transform.scale(
                scale: 1.8,
                child: Image.asset(plant.imageUrl, fit: BoxFit.fill),
              ),
            ),
          ),

          // Details
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    top: 10,
                    right: 25,
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.black),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF234c11),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.white),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),
                      Text(
                        plant.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.2,
                        ),
                      ),

                      const SizedBox(height: 100),

                      Text(
                        'Type',
                        style: TextStyle(color: Colors.black38, fontSize: 14),
                      ),
                      Text(
                        plant.type,
                        style: TextStyle(
                          color: Color(0xFF234c11),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),

                      Text(
                        'Category',
                        style: TextStyle(color: Colors.black38, fontSize: 14),
                      ),
                      Text(
                        plant.category,
                        style: TextStyle(
                          color: Color(0xFF234c11),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),

                      Text(
                        'Price',
                        style: TextStyle(color: Colors.black38, fontSize: 14),
                      ),
                      Text(
                        '₹ ${plant.price.toStringAsFixed(0)}',
                        style: TextStyle(
                          color: Color(0xFF234c11),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 170),

                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: dummyProperties.length,
                          itemBuilder: (context, index) {
                            return PropertyCard(
                              property: dummyProperties[index],
                            );
                          },
                        ),
                      ),

                      SizedBox(height: 30),

                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About ${plant.name}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                plant.description,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
