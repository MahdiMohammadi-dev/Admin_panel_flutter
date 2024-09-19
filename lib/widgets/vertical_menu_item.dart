

import 'package:admin_panel_web/constant/controllers.dart';
import 'package:admin_panel_web/constant/style.dart';
import 'package:admin_panel_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;
  const VerticalMenuItem({super.key, required this.itemName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover('not hovering');
      },
      child: Obx(
            () => Container(
          color: menuController.isHovering(itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: Colors.white,
                ),
              ),
            Expanded(child: Column(
              mainAxisSize:MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  Flexible(
                    child: CustomText(
                      text: itemName,
                      color:
                      menuController.isHovering(itemName) ? dark : lightGrey,
                      weight: FontWeight.normal,
                      size: 16,
                    ),
                  )
                else
                  Flexible(
                    child: CustomText(
                      text: itemName,
                      size: 18,
                      color: dark,
                      weight: FontWeight.normal,
                    ),
                  ),
              ],
            ))
            ],
          ),
        ),
      ),
    );
  }
}
