import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // text controllers
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  // focus nodes
  FocusNode nameFocus = new FocusNode();
  FocusNode emailFocus = new FocusNode();
  FocusNode passwordFocus = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          nameFocus.unfocus();
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
                Text(
                  'Create \n Account.',
                  style: TextStyle(fontSize: 45),
                ),
                Gap(40),
                CustomTextField(
                  hintText: 'Name',
                  icon: Icons.person,
                  controller: nameController,
                  focusNode: nameFocus,
                ),
                Gap(20),
                CustomTextField(
                  hintText: 'Email',
                  icon: Icons.email,
                  controller: emailController,
                  focusNode: emailFocus,
                ),
                Gap(20),
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
                      Get.offNamed('/login');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Already have an account? Sign In',
                        style: TextStyle(color: AppColors.primaryBlackColor),
                      ),
                    ),
                  ),
                ),
                Gap(40),
                Container(
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
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
