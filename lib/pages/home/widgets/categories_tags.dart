import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CategoriesTags extends StatelessWidget {
  const CategoriesTags({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryList = [
      {'name': 'All', 'icon': 'IconlyLight.category'},
      {'name': 'Pizza', 'icon': 'IconlyLight.category'},
      {'name': 'Sushi', 'icon': 'IconlyLight.category'},
    ];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                Chip(
                  shape: const StadiumBorder(
                    side: BorderSide(
                      width: 1,
                      color: Color(0xFFF27D44),
                    ),
                  ),
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          categoryList[index]['name']!,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 2,
                  // bottom: 2,
                  left: 0,
                  width: 45,
                  height: 45,
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF27D44),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      IconlyLight.category,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
