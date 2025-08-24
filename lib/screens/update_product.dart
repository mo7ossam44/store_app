import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/widgets/CustomButton.dart';
import 'package:store/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Update Product',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: UpdateProductPageBody(productModel: productModel),
    );
  }
}

class UpdateProductPageBody extends StatelessWidget {
  const UpdateProductPageBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: Image.network(productModel.image, height: 200),
            ),
            SizedBox(height: 15),
            Text(
              ' Title',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            CustomTextFiled(
              text: productModel.title.substring(0, 11),
              prefixIcon: Icon(Icons.edit),
              obscureText: false,
              radius: 20,
            ),
            SizedBox(height: 15),
            Text(
              ' Price',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            CustomTextFiled(
              text:
                  r'$'
                  '${productModel.price}',
              prefixIcon: Icon(Icons.edit),
              obscureText: false,
              radius: 20,
            ),
            SizedBox(height: 15),
            Text(
              ' Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                border: BoxBorder.all(color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Text(
                productModel.description,
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: 30),
            CustomButton(
              mycolor: Colors.black,
              title: 'Update Product',
              textColor: Colors.white,
              fontSize: 17,
              myontap: () {},
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
