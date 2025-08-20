
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //? arrow to back
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            //? text in the middle
            Text('New Trend', style: TextStyle(fontSize: 22)),
            //? shopping cart icon
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        ),
      ),
    );
  }
}
