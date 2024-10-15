import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:food_delivery_ui/pages/home/home.dart';
import 'package:food_delivery_ui/pages/page2/page2.dart';
import 'package:food_delivery_ui/pages/page3/page3.dart';
import 'package:food_delivery_ui/pages/page4/page4.dart';
import 'package:food_delivery_ui/pages/page5/page5.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pages = [
      const Home(),
      const Page2(),
      const Page3(),
      const Page4(),
      const Page5(),
    ];
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFFF27D44),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(IconlyLight.bag), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.search), label: "cart"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.document), label: "person"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile), label: "person"),
        ],
      ),
    );
  }
}
