import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // text controllers
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  // focus nodes
  FocusNode emailFocus = new FocusNode();
  FocusNode passwordFocus = new FocusNode();

  void login() {
    Get.offNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          emailFocus.unfocus();
          passwordFocus.unfocus();
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite / 2,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon.png'),
                    ),
                  ),
                ),
                Gap(60),
                CustomTextField(
                  hintText: 'Email',
                  icon: Icons.email,
                  controller: emailController,
                  focusNode: emailFocus,
                ),
                Gap(30),
                CustomTextField(
                  hintText: 'Password',
                  icon: Icons.key,
                  controller: passwordController,
                  focusNode: passwordFocus,
                  obscureText: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamed('/register');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Don\'t have an account? Sign Up',
                        style: TextStyle(color: AppColors.primaryBlackColor),
                      ),
                    ),
                  ),
                ),
                Gap(40),
                GestureDetector(
                  onTap: login,
                  child: Container(
                    width: double.maxFinite,
                    height: 70,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBlackColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
