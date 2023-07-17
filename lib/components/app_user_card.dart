import 'package:digital_wallet/models/intenet_user.dart';
import 'package:flutter/material.dart';

class AppUserCard extends StatelessWidget {
  const AppUserCard({super.key, required this.user});
  final InternetUser user;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(user.avatar),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(user.bank,
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey.withOpacity(0.9)))
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0XFFF1F1F9),
          ),
          child: const Icon(
            Icons.account_box,
            color: Color(0XFF525298),
          ),
        )
      ]),
    );
  }
}
