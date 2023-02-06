import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.focusNode,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.backgroundWhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: Icon(icon),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
