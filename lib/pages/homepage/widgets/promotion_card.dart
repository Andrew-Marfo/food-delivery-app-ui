import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      padding: const EdgeInsets.only(left: 20),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF27D44),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'DashPass on Caviar',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Get \$0 delivery, lower service \nfees, & 5% back on pickup!',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFFF27D44)),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Order Now'),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            right: -25,
            bottom: -25,
            height: 200,
            child: Image.asset("assets/burger.png"),
          ),
        ],
      ),
    );
  }
}
