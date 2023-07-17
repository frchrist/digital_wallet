import 'package:digital_wallet/components/app_back_navigation.dart';
import 'package:digital_wallet/components/app_package_card.dart';
import 'package:digital_wallet/components/app_user_card.dart';
import 'package:digital_wallet/models/intenet_user.dart';
import 'package:digital_wallet/models/internet_pacakge.dart';
import 'package:digital_wallet/utils/app_colors.dart';
import 'package:flutter/material.dart';

class InternetPackageScreen extends StatelessWidget {
  InternetPackageScreen({super.key});
  final packages = InternetPackage.getAllPackage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBgLight,
        
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            AppBackNavigation(title: "Internet Data"),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                AppUserCard(user: InternetUser.fakeUser()),
                SizedBox(
                  height: 30,
                ),
                Text("Choose Package", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 500,
                  child: Expanded(
                      child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(height: 10,),
                      itemCount: packages.length,
                    itemBuilder: (context, index) =>
                        AppPackageCard(internetPackage: packages[index]),
                  )),
                ),
                // AppPackageCard(),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
