import 'package:admin_panel_web/constant/controllers.dart';
import 'package:admin_panel_web/helpers/responsiveness_widget.dart';
import 'package:admin_panel_web/pages/drivers/widgets/driver_table.dart';
import 'package:admin_panel_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
              () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    color: Colors.black,
                    weight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
              children: [
                DriverTable(),
              ],
            ),),
      ],
    );
}}
