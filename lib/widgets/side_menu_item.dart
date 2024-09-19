

import 'package:admin_panel_web/helpers/responsiveness_widget.dart';
import 'package:admin_panel_web/widgets/horizental_menu_item.dart';
import 'package:admin_panel_web/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;
  const SideMenuItem({super.key, required this.itemName, this.onTap});

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomSize(context))
      return VerticalMenuItem(itemName: itemName,onTap: onTap,);

    return HorizentalMenuItem(itemName: itemName, onTap: onTap);
  }
}
