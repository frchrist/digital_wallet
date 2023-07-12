import 'package:digital_wallet/models/transactions.dart';
import 'package:flutter/material.dart';

class AppTransactionItem extends StatelessWidget {
  const AppTransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: transactionModel.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(right: 10),
              child:  Icon(
                transactionModel.icon,
                color: transactionModel.color,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  transactionModel.type,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  transactionModel.date,
                  style: TextStyle(

                      color: Colors.grey.withOpacity(0.7),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                 transactionModel.amount,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                Text(
                  transactionModel.label,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
