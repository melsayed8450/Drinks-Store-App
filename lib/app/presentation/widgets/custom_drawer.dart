import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repair_duniya_intern/app/presentation/utils/app_colors.dart';
import 'package:repair_duniya_intern/app/presentation/utils/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.height;
    final width = context.width;
    return Container(
      color: Colors.white,
      width: width,
      child: Stack(
        children: [
          Positioned(
            left: -height * 0.4,
            top: -height * 0.25,
            child: Transform.scale(
              scale: 1.05,
              child: Container(
                height: height * 1,
                width: height * 1,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Positioned(
            left: -height * 0.44,
            top: -height * 0.18,
            child: Transform.scale(
              scale: 0.8,
              child: Container(
                height: height * 1,
                width: height * 1,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 215, 239, 127),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Positioned(
            right: width * 0.05,
            top: height * 0.035,
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Image.asset(AppAssets.backIcon),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.035,
                  horizontal: width * 0.07,
                ),
                child: SizedBox(
                  height: height * 0.2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CircleAvatar(
                        radius: width * 0.22,
                        backgroundColor: Colors.white,
                        child: Image.asset(AppAssets.profilePic),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.07,
                          ),
                          Text(
                            'John Tim',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              height: 1.3625,
                              color: Color.fromARGB(255, 71, 80, 90),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.008,
                          ),
                          Text(
                            'Edit Profile',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              height: 1.3625,
                              color: Color.fromARGB(255, 71, 80, 90),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                indent: 0,
                endIndent: 120,
                color: Colors.black,
                thickness: 1.5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.15,
                  top: height * 0.015,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: height * 0.017),
                      child: Text(
                        'Categories',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          height: 1.3625,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height * 0.017),
                      child: Text(
                        'Your Orders',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          height: 1.3625,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height * 0.017),
                      child: Text(
                        'Whishlist',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          height: 1.3625,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height * 0.017),
                      child: Text(
                        'FAQs',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          height: 1.3625,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height * 0.017),
                      child: Text(
                        'Log Out',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          height: 1.3625,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
