import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:food_delivery_ui/pages/home/home.dart';
import 'package:food_delivery_ui/pages/shops/shops.dart';
import 'package:food_delivery_ui/pages/search/search.dart';
import 'package:food_delivery_ui/pages/order/order.dart';
import 'package:food_delivery_ui/pages/account/account.dart';

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
        items: [
          BottomNavigationBarItem(
              icon: Icon(pageIndex == 0 ? IconlyBold.home : IconlyLight.home),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(pageIndex == 1 ? IconlyBold.bag : IconlyLight.bag),
              label: "shops"),
          BottomNavigationBarItem(
              icon:
                  Icon(pageIndex == 2 ? IconlyBold.search : IconlyLight.search),
              label: "search"),
          BottomNavigationBarItem(
              icon: Icon(
                  pageIndex == 3 ? IconlyBold.document : IconlyLight.document),
              label: "order"),
          BottomNavigationBarItem(
              icon: Icon(
                  pageIndex == 4 ? IconlyBold.profile : IconlyLight.profile),
              label: "account"),
        ],
      ),
    );
  }
}
