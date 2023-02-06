import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            IconButton(
              onPressed: () {
                Get.offNamed('/login');
              },
              icon: Icon(Icons.arrow_back),
            ),
            Container(
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
