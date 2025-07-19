import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedTabIndex = 0;
  final List<String> tabs = [
    'Popular',
    'Outdoor',
    'Indoor',
    'New Arrivals',
    'Top Pick',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,

        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTabIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child: Column(
                children: [
                  Text(
                    tabs[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: selectedTabIndex == index
                          ? Colors.black
                          : Colors.grey[600],
                      fontWeight: selectedTabIndex == index
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: selectedTabIndex == index
                          ? Colors.black
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
