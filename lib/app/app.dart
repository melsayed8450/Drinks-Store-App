import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:repair_duniya_intern/app/presentation/routes/app_pages.dart';
import 'package:repair_duniya_intern/app/presentation/routes/app_routes.dart';

class DrinksApp extends StatelessWidget {
  const DrinksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      initialRoute: AppPages.home,
    );
  }
}
