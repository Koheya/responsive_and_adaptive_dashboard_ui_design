import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithdraw: true),
    TransactionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithdraw: false),
    TransactionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithdraw: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
