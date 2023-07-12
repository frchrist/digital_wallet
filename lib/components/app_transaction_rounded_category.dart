import 'package:flutter/material.dart';

class AppTransactionRoundedCategory extends StatelessWidget {
  const AppTransactionRoundedCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children:  [
          AppTransactionRoundedCategoryItem(
            color: Color(0XFF32A7E2),
            label: "Transfer",
            icon: Icons.arrow_right_alt_sharp,
          ),
          AppTransactionRoundedCategoryItem(
            color: Color(0XFFB548C6),
            label: "Top-up",
            icon: Icons.transcribe_outlined,
          ),
          AppTransactionRoundedCategoryItem(
            color: Color(0XFFFF8700),
            label: "Bill",
            icon: Icons.wallet,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "/menu");
            },
            child: AppTransactionRoundedCategoryItem(
            color: Color(0XFF22B07D),
            label: "More",
            icon: Icons.more,
          )),
        ],
      ),
    );
  }
}

class AppTransactionRoundedCategoryItem extends StatelessWidget {
  const AppTransactionRoundedCategoryItem(
      {super.key, this.color, required this.label, required this.icon});
  final String label;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 70,
      child: Column(children: [
        Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            )),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: const TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: Color(0XFF818197)),
        )
      ]),
    );
  }
}
