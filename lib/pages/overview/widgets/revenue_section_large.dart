import 'package:admin_panel_web/constant/style.dart';
import 'package:admin_panel_web/pages/overview/widgets/bar_chart.dart';
import 'package:admin_panel_web/pages/overview/widgets/revenue_info.dart';
import 'package:admin_panel_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35),
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12,
            )
          ],
          border: Border.all(color: lightGrey, width: .5),
        ),
        child: Row(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                    text: 'Revenue Chart',
                    size: 20,
                    color: lightGrey,
                    weight: FontWeight.bold),
                Container(width: 600, height: 200, child: BarChart()),
              ],
            )),
            Container(
              width: 1,
              height: 120,
              color: lightGrey,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      RevenueInfo(title: 'Today\'s Revenue', amount: '23'),
                      RevenueInfo(title: 'Last 7 days', amount: '150'),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      RevenueInfo(title: 'Last 30 days', amount: '1,023'),
                      RevenueInfo(title: 'Last 12 months', amount: '3,234'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
