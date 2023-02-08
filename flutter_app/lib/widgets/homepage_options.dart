import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_dairy/utils/app_colors.dart';

class HomepageOption extends StatelessWidget {
  final double height;
  final double width;
  final String cardTitle;
  final int cardDigits;
  final IconData icon;
  final VoidCallback onTap;

  HomepageOption({
    Key? key,
    required this.height,
    required this.width,
    required this.cardDigits,
    required this.cardTitle,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        height: height / 6,
        width: width / 2.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Gap(10),
            Text(
              cardTitle,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Gap(10),
            Text(
              "$cardDigits",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: AppColors.primaryGreenColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(4, 3),
              blurRadius: 8,
              spreadRadius: 0.6,
            )
          ],
        ),
      ),
    );
  }
}

class HomepageOptionWithoutText extends StatelessWidget {
  final double height;
  final double width;
  final String cardTitle;
  final VoidCallback onTap;
  final Color color;
  final IconData icon;

  const HomepageOptionWithoutText({
    Key? key,
    required this.height,
    required this.width,
    required this.cardTitle,
    required this.onTap,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        height: height / 6,
        width: width / 2.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Gap(10),
            Text(
              cardTitle,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Gap(10),
          ],
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(4, 3),
              blurRadius: 8,
              spreadRadius: 0.6,
            )
          ],
        ),
      ),
    );
  }
}
