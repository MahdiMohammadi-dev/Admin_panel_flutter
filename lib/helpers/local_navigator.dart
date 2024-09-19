


import 'package:admin_panel_web/constant/controllers.dart';
import 'package:admin_panel_web/routing/routes.dart';
import 'package:flutter/widgets.dart';

Navigator localNavigator()=>Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,

);