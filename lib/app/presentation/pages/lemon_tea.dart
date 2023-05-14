import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repair_duniya_intern/app/presentation/utils/app_colors.dart';
import 'package:repair_duniya_intern/app/presentation/utils/assets.dart';

class LemonTeaPage extends StatelessWidget {
  const LemonTeaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.height;
    final width = context.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 239, 127),
      body: Stack(
        children: [
          Positioned(
            right: -100,
            top: -100,
            child: Transform.scale(
              scale: 1,
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    color: AppColors.secondaryColor, shape: BoxShape.circle),
              ),
            ),
          ),
          Positioned(
            right: -55,
            top: -55,
            child: Transform.scale(
              scale: 1,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 215, 239, 127),
                    shape: BoxShape.circle),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 40,
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Image.asset(
                AppAssets.backIcon,
                height: 30,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.63,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: height * 0.04,
                  left: width * 0.11,
                  right: width * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Particutars',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        height: 1.3625,
                        color: const Color(0xff39460d),
                      ),
                    ),
                    Text(
                      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,''',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 1.3625,
                        color: const Color(0xff39460d),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.015),
                      child: Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.02),
                              child: Image.asset(
                                AppAssets.starIcon,
                                width: width * 0.05,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: height * 0.1,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '500 ml',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  height: 1.3625,
                                  color: AppColors.greenTextColor,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          child: Container(
                            height: height * 0.1,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Less Ice',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    height: 1.3625,
                                    color: AppColors.greenTextColor,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.1,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Sugar',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  height: 1.3625,
                                  color: AppColors.greenTextColor,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Text(
                      'Services',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        height: 1.3625,
                        color: const Color(0xff39460d),
                      ),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.3625,
                        color: const Color(0xff39460d),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.restore,
                            color: Colors.grey,
                            size: width * 0.1,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                            size: width * 0.1,
                          ),
                          Container(
                            width: width * 0.55,
                            height: height * 0.07,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Purchase',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3625,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 30,
            top: height * 0.13,
            child: Image.asset(
              AppAssets.lemonadeTeaPic,
              height: height * 0.3,
            ),
          ),
          Positioned(
            left: 30,
            top: height * 0.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lemon Tea',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    height: 1.3625,
                    color: AppColors.greenTextColor,
                  ),
                ),
                Text(
                  'Good day time',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.3625,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          height: 1.3625,
                          color: Colors.grey,
                          fontFeatures: [FontFeature.superscripts()]),
                    ),
                    Text(
                      '12.99',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                        height: 1.3625,
                        color: AppColors.greenTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
