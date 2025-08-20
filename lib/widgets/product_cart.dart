
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          // decoration: BoxDecoration(color: Colors.grey.shade300),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('201', style: TextStyle(fontWeight: FontWeight.bold)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          height: 140,
          child: Image.asset('assets/images/bag.png', height: 150),
        ),
      ],
    );
  }
}
