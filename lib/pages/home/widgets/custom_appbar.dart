import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: const Color(0xFFF27D44),
          ),
          image: const DecorationImage(
              image: AssetImage(
                "assets/profile.jpg",
              ),
              fit: BoxFit.cover),
        ),
      ),
      centerTitle: true,
      title: const Chip(
        backgroundColor: Color(0xFFF7F8F9),
        side: BorderSide(color: Colors.transparent),
        shape: StadiumBorder(),
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.location_on_outlined),
            SizedBox(width: 5),
            Text('California, USA'),
            SizedBox(width: 20),
            Icon(Icons.arrow_drop_down_sharp)
          ],
        ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
              color: const Color(0xFFFCFBFA),
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: const Color(0xFFF7F8F9))),
          child: Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
              Positioned(
                top: 7,
                right: 10,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF5247),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
