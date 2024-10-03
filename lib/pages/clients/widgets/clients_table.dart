

import 'package:admin_panel_web/constant/style.dart';
import 'package:admin_panel_web/widgets/custom_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class ClientsTable extends StatelessWidget {
  const ClientsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 30),
      child: SizedBox(
        height: (56 * 7) + 40,
        child: DataTable2(
          columnSpacing: 12,
          dataRowHeight: 56,
          headingRowHeight: 40,
          horizontalMargin: 12,
          minWidth: 600,
          columns: const [
            DataColumn2(
              label: Text("Name"),
              size: ColumnSize.L,
            ),
            DataColumn(
              label: Text('Location'),
            ),
            DataColumn(
              label: Text('Rating'),
            ),
            DataColumn(
              label: Text('Action'),
            ),
          ],
          rows: List<DataRow>.generate(
            7,
                (index) => DataRow(
              cells: [
                const DataCell(CustomText(
                  text: "Mahdi Mohammadi",
                  size: 16,
                  color: Colors.black,
                  weight: FontWeight.bold,
                )),
                const DataCell(CustomText(
                  text: "Tehran",
                  size: 16,
                  color: Colors.black,
                  weight: FontWeight.bold,
                )),
                const DataCell(
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.deepOrange, size: 18),
                      SizedBox(width: 5),
                      CustomText(
                        text: "4.5",
                        size: 16,
                        color: Colors.black,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                DataCell(
                  Container(
                    decoration: BoxDecoration(
                      color: light,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: active, width: .5),
                    ),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: CustomText(
                      text: "Block Client",
                      size: 16,
                      color: active.withOpacity(.7),
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
