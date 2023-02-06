
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget leading;
  final Widget title;
  final List<Widget>? actions;

  const CustomAppBar({
    Key? key,
    this.height = kToolbarHeight,
    required this.leading,
    required this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: leading,
        centerTitle: true,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}