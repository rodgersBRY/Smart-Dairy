// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:smart_dairy/utils/app_colors.dart';

import '../widgets/quickaction_container.dart';
import './cows.dart';
import '../widgets/homepage_options.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Widget> tabPages = [
    CowsPage(),
    Icon(Icons.directions_transit),
    Icon(Icons.directions_bike),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://imgs.search.brave.com/pqupzqvOa8bEWEQoVpTCgNKkvRoumiBG8wva0O8uOcc/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/bGVuc21lbi5pZS93/cC1jb250ZW50L3Vw/bG9hZHMvMjAxNS8w/Mi9Qcm9maWxlLVBv/cnRyYWl0LVBob3Rv/Z3JhcGhlci1pbi1E/dWJsaW4tSXJlbGFu/ZC4uanBn'),
                        ),
                        borderRadius: BorderRadius.circular(17)),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    color: AppColors.primaryBlackColor,
                    onPressed: () {},
                    icon: Icon(Icons.notifications_active),
                  ),
                ],
              ),
              Gap(20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(fontSize: 16),
                        ),
                        Gap(5),
                        Text(
                          'Hey, Mawira',
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(40),
              Center(
                child: Wrap(
                  spacing: 34,
                  runSpacing: 34,
                  children: [
                    HomepageOption(
                      height: height,
                      width: width,
                      cardDigits: 23,
                      icon: Icons.cabin,
                      cardTitle: 'Cow Herd',
                      onTap: () {
                        Get.toNamed('/cows');
                      },
                    ),
                    HomepageOptionWithoutText(
                      color: AppColors.primaryBlackColor,
                      height: height,
                      width: width,
                      icon: Icons.candlestick_chart,
                      cardTitle: 'Milk Production',
                      onTap: () {},
                    ),
                    HomepageOptionWithoutText(
                      color: AppColors.secondaryBlueColor,
                      height: height,
                      icon: Icons.currency_pound_outlined,
                      width: width,
                      cardTitle: 'Finances',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Gap(50),
              Text(
                "Quick Actions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Gap(10),
              QuickActionContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

// Expanded(
//               child: DefaultTabController(
//                 length: 3,
//                 child: Scaffold(
//                   appBar: AppBar(
//                     toolbarHeight: 20,
//                     elevation: 0,
//                     backgroundColor: AppColors.secondaryGreenColor,
//                     bottom: const TabBar(
//                       labelColor: Colors.white,
//                       tabs: [
//                         Tab(text: "Cows"),
//                         Tab(text: 'Milk'),
//                         Tab(text: 'Finances'),
//                       ],
//                     ),
//                   ),
//                   body: TabBarView(
//                     children: tabPages,
//                   ),
//                 ),
//               ),
//             ),
          