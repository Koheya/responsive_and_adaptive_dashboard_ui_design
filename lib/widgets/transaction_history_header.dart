import 'package:flutter/cupertino.dart';

import '../utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          "See All",
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: const Color(0xFF4DB7F2)),
        ),
      ],
    );
  }
}
