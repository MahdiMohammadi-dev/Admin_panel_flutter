import 'package:admin_panel_web/helpers/responsiveness_widget.dart';
import 'package:admin_panel_web/widgets/large_screen.dart';
import 'package:admin_panel_web/widgets/side_menu.dart';
import 'package:admin_panel_web/widgets/small_screen.dart';
import 'package:admin_panel_web/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      drawer: Drawer(child: SideMenu(),),
        appBar: topNavigationBar(context, scaffoldKey),
        body: ResponsiveWidget(largeScreen: LargeScreen
        (),smallScreen: SmallScreen(),));
    }
}
