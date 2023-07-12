import 'package:digital_wallet/components/app_transaction_item.dart';
import 'package:digital_wallet/models/transactions.dart';
import 'package:flutter/material.dart';

class AppTransactionSection extends StatelessWidget {
  AppTransactionSection({super.key});
  final List<TransactionModel> transactions =
      TransactionModel.getTransactions();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 600,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Transaction",
            style: TextStyle(
                color: Color(0XFF082431), fontSize: 20, fontFamily: "Poppins"),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => AppTransactionItem(transactionModel: transactions[index],),
              itemCount: transactions.length,
            ),
          ),
        ],
      ),
    );
  }
}
