
import 'package:admin_panel_web/constant/style.dart';
import 'package:admin_panel_web/controllers/menu_controller.dart' as menu_controller;
import 'package:admin_panel_web/controllers/navigation_controller.dart';
import 'package:admin_panel_web/pages/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(menu_controller.MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
  // runApp( BarChart());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dashboard",
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: const FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: const FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blue,
      ),
      home:  const AuthenticationPage(),
    );
  }
}
