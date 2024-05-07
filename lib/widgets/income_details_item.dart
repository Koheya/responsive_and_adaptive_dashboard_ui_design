import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_item.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({
    super.key,
    required this.incomeDetailsItemModel,
  });
  final IncomeDetailsItemModel incomeDetailsItemModel;
  @override
  Widget build(BuildContext context) {
    return
        // return Padding(
        //   padding: const EdgeInsets.only(left: 16),
        //   child: FittedBox(
        //     fit: BoxFit.scaleDown,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         Container(
        //           height: 12,
        //           width: 12,
        //           decoration: ShapeDecoration(
        //             color: incomeDetailsItemModel.color,
        //             shape: const OvalBorder(),
        //           ),
        //         ),
        //         const SizedBox(width: 12),
        //         Text(
        //           incomeDetailsItemModel.title,
        //           style: AppStyles.styleRegular16,
        //         ),
        //         const SizedBox(width: 24),
        //         Text(
        //           incomeDetailsItemModel.value,
        //           style: AppStyles.styleMeduim16,
        //         ),
        //       ],
        //     ),
        //   ),
        // );

        ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsItemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailsItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailsItemModel.value,
        style: AppStyles.styleMeduim16(context),
      ),
    );
  }
}
