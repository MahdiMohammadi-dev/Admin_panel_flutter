import 'package:admin_panel_web/pages/authentication/authentication.dart';
import 'package:admin_panel_web/pages/clients/clients.dart';
import 'package:admin_panel_web/pages/drivers/drivers.dart';
import 'package:admin_panel_web/pages/overview/overview.dart';
import 'package:admin_panel_web/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(const OverviewPage());
    case DriversPageRoute:
      return _getPageRoute(const DriversPage());
    case ClientsPageRoute:
     return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child,);
}