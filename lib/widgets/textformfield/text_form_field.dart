import 'package:e_commerce_app/widgets/text/size_title_medium.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String title;
  final String hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitleMedium(title: title),
          TextFormField(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
            controller: controller,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintStyle: const TextStyle(
                color: Color(0xffD3D3D3),
              ),
              hintText: hintText,
            ),
          ),
        ],
      ),
    );
  }
}