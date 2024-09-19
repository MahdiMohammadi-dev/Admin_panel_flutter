import 'package:admin_panel_web/constant/controllers.dart';
import 'package:admin_panel_web/constant/style.dart';
import 'package:admin_panel_web/helpers/responsiveness_widget.dart';
import 'package:admin_panel_web/routing/routes.dart';
import 'package:admin_panel_web/widgets/custom_text.dart';
import 'package:admin_panel_web/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                    Flexible(
                      child: CustomText(
                          text: 'Dash',
                          size: 20,
                          color: active,
                          weight: FontWeight.bold),
                    ),
                    SizedBox(width: width/48,)
                  ],
                ),
        ],
      ),
          const SizedBox(height: 40,),
          Divider(color: lightGrey.withOpacity(.1),),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItem.map((itemName)=>SideMenuItem(itemName: itemName==AuthenticationPageRoute?"Log Out":itemName,
              onTap: () {
                if(itemName==AuthenticationPageRoute){

                }
                if(!menuController.isActive(itemName)){
                  menuController.changeItemActiveTo(itemName);
                  if(ResponsiveWidget.isSmallScreen(context))
                    Get.back();

                }
              },),).toList(),
          )
       
        ],
      )
    );
  }
}
