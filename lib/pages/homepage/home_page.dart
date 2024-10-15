import 'package:flutter/material.dart';
import 'package:food_delivery_ui/pages/homepage/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: const Center(
        child: Text("This is the homepage"),
      ),
    );
  }
}
