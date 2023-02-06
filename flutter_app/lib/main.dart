import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_dairy/screens/auth/register_screen.dart';
import 'package:smart_dairy/screens/homepage.dart';

import './screens/auth/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Dairy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      getPages: appRoutes(),
    );
  }

  appRoutes() {
    return [
      GetPage(
        name: '/login',
        page: () => LoginScreen(),
        transition: Transition.leftToRight,
      ),
      GetPage(
        name: '/register',
        page: () => RegisterScreen(),
        transition: Transition.leftToRight,
      ),
      GetPage(
        name: '/',
        page: () => HomePage(),
        transition: Transition.downToUp,
      ),
    ];
  }
}
