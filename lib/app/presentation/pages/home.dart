import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repair_duniya_intern/app/presentation/routes/app_pages.dart';
import 'package:repair_duniya_intern/app/presentation/utils/app_colors.dart';
import 'package:repair_duniya_intern/app/presentation/utils/assets.dart';

import '../widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final height = context.height;
    final width = context.width;
    return Scaffold(
      key: _key,
      backgroundColor: Color.fromARGB(255, 251, 251, 251),
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => _key.currentState!.openDrawer(),
          icon: const Icon(
            Icons.menu,
            color: Color(0xff465059),
          ),
        ),
        title: Text(
          'Hi, John!',
          style: GoogleFonts.nunitoSans(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            height: 1.3625,
            color: const Color(0xff465059),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.04),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    labelStyle: GoogleFonts.nunitoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.3625,
                      color: const Color(0xff465059),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Recommendation',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.3625,
                          color: AppColors.greenTextColor,
                        ),
                      ),
                      Text(
                        '●',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.3625,
                          color: AppColors.greenTextColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Black Tea',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.3625,
                      color: const Color(0xff465059),
                    ),
                  ),
                  Text(
                    'Green Tea',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.3625,
                      color: const Color(0xff465059),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.235,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: ()=>Get.toNamed(AppPages.lemonTea),
                      child: Container(
                        width: width * 0.35,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              AppAssets.lemonadeTeaPic,
                              height: height * 0.15,
                            ),
                            Text(
                              'Lemon Tea',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                height: 1.3625,
                                color: AppColors.greenTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: width * 0.35,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            AppAssets.teaPic,
                            height: height * 0.15,
                          ),
                          Text(
                            'Black Tea',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              height: 1.3625,
                              color: AppColors.greenTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: width * 0.35,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            AppAssets.teaPic,
                            height: height * 0.15,
                          ),
                          Text(
                            'Green Tea',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              height: 1.3625,
                              color: AppColors.greenTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.025),
              child: Stack(
                children: [
                  Container(
                    height: height * 0.013,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Container(
                    height: height * 0.013,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.02),
              child: Row(
                children: [
                  Text(
                    'Will Buy',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      height: 1.3625,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: width * 0.25,
                      height: height * 0.11,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: -20,
                            bottom: -20,
                            child: Container(
                              width: width * 0.25,
                              height: width * 0.25,
                              decoration: const BoxDecoration(
                                color: AppColors.secondaryColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              AppAssets.bubbleTeaPic,
                              width: width * 0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bubble Tea',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            height: 1.3625,
                            color: AppColors.greenTextColor,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.008,
                        ),
                        Text(
                          'Good day time',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.3625,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          height: 1.3625,
                          color: Colors.grey,
                          fontFeatures: [FontFeature.superscripts()]),
                    ),
                    Text(
                      '56.99',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        height: 1.3625,
                        color: AppColors.greenTextColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: width * 0.25,
                      height: height * 0.11,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: -20,
                            bottom: -20,
                            child: Container(
                              width: width * 0.25,
                              height: width * 0.25,
                              decoration: const BoxDecoration(
                                color: AppColors.secondaryColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              AppAssets.purpleTeaPic,
                              width: width * 0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Purple Tea',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            height: 1.3625,
                            color: AppColors.greenTextColor,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.008,
                        ),
                        Text(
                          'Happy hours',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.3625,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          height: 1.3625,
                          color: Colors.grey,
                          fontFeatures: [FontFeature.superscripts()]),
                    ),
                    Text(
                      '25.99',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        height: 1.3625,
                        color: AppColors.greenTextColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(40),
              child: Container(
                width: width * 0.9,
                height: height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      AppAssets.marketIcon,
                      height: height * 0.035,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: height * 0.06,
                          width: height * 0.06,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.secondaryColor),
                        ),
                        Positioned(
                          right: 0,
                          left: 0,
                          top: height * 0.013,
                          child: Image.asset(
                            AppAssets.homeIcon,
                            height: height * 0.03,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      AppAssets.cartIcon,
                      height: height * 0.035,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
