import 'package:flutter/material.dart';
import 'package:smart_dairy/utils/app_colors.dart';

class CowsPage extends StatelessWidget {
  const CowsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Your Cows"),
          backgroundColor: AppColors.primaryGreenColor,
        ),
        body: Container(
          child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/cow-image.webp'),
                    ),
                    title: Text(
                      'Mercy',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Category: CALF',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
