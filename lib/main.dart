
import 'package:admin_panel_web/constant/style.dart';
import 'package:admin_panel_web/controllers/menu_controller.dart' as menu_controller;
import 'package:admin_panel_web/controllers/navigation_controller.dart';
import 'package:admin_panel_web/layout.dart';
import 'package:admin_panel_web/pages/authentication/authentication.dart';
import 'package:admin_panel_web/pages/error_page/error_page.dart';
import 'package:admin_panel_web/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(menu_controller.MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: rootRoute,
      unknownRoute: GetPage(name: '/not-found', page: () => const ErrorPage(), transition: Transition.fadeIn),
      getPages: [
        GetPage(
            name: rootRoute,
            page: () {
              return SiteLayout();
            }),
        GetPage(name: authenticationPageRoute, page: () => const AuthenticationPage()),
      ],
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

    );
  }
}
