import 'package:digital_wallet/screens/balance.dart';
import 'package:digital_wallet/screens/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        useMaterial3: true,
      ),
      routes: {
        "/" : (context) => const BalanceScreen(),
        "/menu" : (context) => const MenuScreen(),


      }, 
    );
  }
}

