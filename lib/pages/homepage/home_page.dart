import 'package:flutter/material.dart';
import 'package:food_delivery_ui/pages/homepage/widgets/custom_appbar.dart';
import 'package:food_delivery_ui/pages/homepage/widgets/promotion_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppbar(),
      ),
      body: const Column(
        children: [
          PromotionCard(),
        ],
      ),
    );
  }
}
