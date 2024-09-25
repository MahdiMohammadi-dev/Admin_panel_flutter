import 'package:admin_panel_web/pages/overview/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
          height: 400,
          child: Column(children: [
            InfoCardSmall(
              title: 'Ride in progress',
              value: "7",
              isActive: true,
              onTap: () {},
            ),
            SizedBox(
              width: _width / 48,
              height: 12,
            ),
            InfoCardSmall(
              title: 'Package delivered',
              value: '10',
              onTap: () {},
            ),
            SizedBox(
              width: _width / 48,
              height: 12,
            ),
            InfoCardSmall(
              title: 'Cancelled delivery',
              value: "18",
              onTap: () {},
            ),
            SizedBox(
              width: _width / 48,
              height: 12,
            ),
            InfoCardSmall(
              title: 'Scheduled deliveries',
              value: "3",
              onTap: () {},
            )
          ])),
    );
  }
}
