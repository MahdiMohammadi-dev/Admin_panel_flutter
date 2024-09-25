import 'package:admin_panel_web/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsMedium extends StatelessWidget {
  const OverviewCardsMedium({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.sizeOf(context).width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Ride in progress',
              value: "7",
              topColor: Colors.orange,
              onTap: () {},
            ),
            SizedBox(width: _width / 48),
            InfoCard(
              title: 'Package delivered',
              value: "18",
              topColor: Colors.lightGreen,
              onTap: () {},
            ),
          ],
        ),
        Row(
          children: [
            InfoCard(
              title: 'Cancelled Delivery',
              value: "23",
              topColor: Colors.redAccent,
              onTap: () {},
            ),
            SizedBox(width: _width / 48),
            InfoCard(
              title: 'Scheduled deliveries',
              value: "3",
              topColor: Colors.grey,
              onTap: () {},
            ),
            SizedBox(width: _width / 48),
          ],
        )
      ],
    );
  }
}
