import 'package:digital_wallet/models/internet_pacakge.dart';
import 'package:digital_wallet/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppPackageCard extends StatelessWidget {
  const AppPackageCard({super.key, required this.internetPackage});
  final InternetPackage internetPackage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  child: const Icon(
                    Icons.star,
                    color: Color(0XFFFFFFFF),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(internetPackage.name),
              ],
            ),
            Text(internetPackage.amount,
                style: const TextStyle(
                    color: kTextDark,
                    fontSize: 15,
                    fontWeight: FontWeight.w500))
          ],
        ),
        Divider(
          height: 30,
          color: Colors.grey.withOpacity(0.2),
        ),
        Text(
          internetPackage.decription,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ]),
    );
  }
}
