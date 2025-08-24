import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.mycolor,
      required this.title,
      required this.textColor,
      required this.fontSize,
      required this.myontap});

  Color mycolor;
  String title;
  Color textColor;
  double fontSize;
  void Function() myontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: mycolor,
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
            // fontFamily: 'montserrat',
            fontFamily: 'WorkSans',

            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        )), //Text('Get started', style: TextStyle(color: Colors.white,)),
        width: double.infinity,
        height: 60,
      ),
    );
  }
}
