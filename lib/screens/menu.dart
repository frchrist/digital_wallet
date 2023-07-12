import 'package:digital_wallet/components/app_menu_shortcuts.dart';
import 'package:digital_wallet/utils/app_colors.dart';
import 'package:digital_wallet/utils/app_menu_data.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBgLight,
        body: SingleChildScrollView(
          child: Column(
                  children: [
          Row(
            children: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 80,
              ),
              Text(
                "Menu",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Search",
                  ),
                ),
              ),
              const Positioned(
                right: 30,
                top: 20,
                child: Icon(Icons.search_rounded),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Shortcuts"),
                TextButton(
                  onPressed: () {},
                  child: Text("Customize"),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Expanded(child: AppMenuShortcuts(shortcuts: shortcuts,)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [Text("Others", textAlign: TextAlign.start,),],),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Expanded(child: AppMenuShortcuts(shortcuts: shortcutsMore,)),
            ),
          ),
                  ],
                ),
        ),
      ),
    );
  }
}
