import 'package:digital_wallet/components/app_bottom_navigation.dart';
import 'package:digital_wallet/components/app_transaction_rounded_category.dart';
import 'package:digital_wallet/components/app_transaction_section.dart';
import 'package:digital_wallet/utils/app_colors.dart';
import 'package:digital_wallet/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBgLight,
        width: double.infinity,
        child:  SafeArea(
          child:  Padding(
            padding: const EdgeInsets.only(
              top: 20,
              // left: 40,
              // right: 40,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                Text(
                  "Your Balance",
                  style: kMainTextStyle,
                ),
                SizedBox(height: 10,),
                Text(
                  "FCFA 22 000",
                  style: TextStyle(
                      color: kTextDark,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 36),
                ),
                SizedBox(height: 15,),
                
                AppTransactionRoundedCategory(),
                SizedBox(height: 20,),

                AppTransactionSection(),
                
              ]),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigation(),
    );
  }
}
