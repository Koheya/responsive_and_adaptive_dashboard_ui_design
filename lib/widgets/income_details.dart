import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_item.dart';
import 'package:responsive_dash_board/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailsItemModel(
        color: Color(0xFF208BC7), title: "Design Services", value: "40%"),
    IncomeDetailsItemModel(
        color: Color(0xFF4DB7F2), title: "Design Product", value: "25%"),
    IncomeDetailsItemModel(
        color: Color(0xFF064060), title: "Product royalti", value: "20%"),
    IncomeDetailsItemModel(
        color: Color(0xFFE2DECD), title: "Other", value: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return
        // ListView.builder(
        //   itemCount: items.length,
        //   shrinkWrap: true,
        //   itemBuilder: (context, index) {
        //     return IncomeDetailsItem(incomeDetailsItemModel: items[index]);
        //   },
        // );
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((e) => IncomeDetailsItem(incomeDetailsItemModel: e))
          .toList(),
    );
  }
}
