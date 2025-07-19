import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/productmodel.dart';

final dummyPlants = [
  Plant(
    id: '1',
    name: 'Peace Lily',
    imageUrl: 'assets/images/peace_lilly.png',
    backgroundColor: Colors.green.shade50,
    price: 249.00, // ₹249.00
    type: 'Small',
    category: 'Indoor Plant',
    light: 37,
    water: 2,
    temp: 25,
    description: 'Peace lily is known for its air-purifying abilities and elegant white flowers. Best suited for low light areas.',
  ),
  Plant(
    id: '2',
    name: 'ZZ Plant',
    imageUrl: 'assets/images/zz_plant.png',
    backgroundColor: Colors.teal.shade50,
    price: 349.00, // ₹349.00
    type: 'Medium',
    category: 'Indoor Plant',
    light: 50,
    water: 1.5,
    temp: 28,
    description: 'The ZZ plant is drought-tolerant, low maintenance, and perfect for beginners. It thrives in indirect light.',
  ),
  Plant(
    id: '3',
    name: 'Aloe Vera',
    imageUrl: 'assets/images/aloe_vera.png',
    backgroundColor: Colors.yellow.shade50,
    price: 199.00, // ₹199.00
    type: 'Small',
    category: 'Succulent',
    light: 70,
    water: 0.8,
    temp: 32,
    description: 'Aloe Vera is known for its medicinal properties. Needs bright light and occasional watering.',
  ),
  Plant(
    id: '4',
    name: 'Areca Palm',
    imageUrl: 'assets/images/areca_palm.png',
    backgroundColor: Colors.lime.shade50,
    price: 499.00, // ₹499.00
    type: 'Large',
    category: 'Indoor/Outdoor',
    light: 60,
    water: 3,
    temp: 30,
    description: 'Areca Palm adds a tropical vibe to your space. Needs frequent watering and moderate sunlight.',
  ),
  Plant(
    id: '5',
    name: 'Snake Plant',
    imageUrl: 'assets/images/snake_plant.png',
    backgroundColor: Colors.orange.shade50,
    price: 299.00, // ₹299.00
    type: 'Medium',
    category: 'Indoor Plant',
    light: 20,
    water: 1,
    temp: 24,
    description: 'Snake Plant is extremely hardy and survives in low light. It’s a powerful air-purifier too.',
  ),
];
