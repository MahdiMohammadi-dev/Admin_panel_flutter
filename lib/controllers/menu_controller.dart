import 'package:admin_panel_web/constant/style.dart';
import 'package:admin_panel_web/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = OverViewPageRoute.obs;
  var hoverItem = "".obs;

  changeItemActiveTo(String itemName) {
    activeItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  Widget returnIconFor(String itemName){
    switch(itemName){
      case OverViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case ClientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
        case AuthenticationPageRoute:
        return _customIcon(Icons.lock_outline, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }


  Widget _customIcon(IconData icon,String itemName){
    if(isActive(itemName)) return Icon(icon,size: 22,color: dark,);

    return Icon(icon,color: isHovering(itemName)?dark:lightGrey,);
  }


}
