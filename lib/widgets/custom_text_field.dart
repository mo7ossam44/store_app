import 'package:flutter/material.dart';

class CustomTextFiled extends StatefulWidget {
  const CustomTextFiled({
    required this.text,
    required this.prefixIcon,
    this.obscureText,
    this.onChanged,
    this.radius,
  });

  final String? text;
  final Widget? prefixIcon;
  final double? radius;
  final bool? obscureText;
  final Function(String)? onChanged;

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return '${widget.text!.toLowerCase()}';
        } else {
          return null;
        }
      },
      obscureText: widget.obscureText!,
      onChanged: widget.onChanged,
      cursorColor: Colors.grey.shade600,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius!),
          borderSide: BorderSide(color: Colors.grey.shade600),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius!),
          borderSide: BorderSide(color: Colors.grey.shade600),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius!),
          borderSide: BorderSide(color: Colors.grey.shade600),
        ),
        hintText: widget.text,
        prefixIcon: widget.prefixIcon,
        suffixIconColor: Colors.black,
        prefixIconColor: Colors.black,
      ),
    );
  }
}
