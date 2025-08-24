import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, this.productModel});

  final ProductModel? productModel;
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isSelected = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productModel!.title.substring(0, 11),
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$'
                        '${widget.productModel!.price}',
                        style: TextStyle(fontSize: 17),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: isSelected ? Colors.red : Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: -20,
            child: Image.network(
              widget.productModel!.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
