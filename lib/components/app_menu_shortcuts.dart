
import 'package:flutter/material.dart';

class AppMenuShortcuts extends StatelessWidget {
  const AppMenuShortcuts({super.key, required this.shortcuts});
   final List<Map> shortcuts;
 
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: shortcuts.length,
      separatorBuilder: (context, index) => Divider(color: Colors.grey.withOpacity(0.2)),
      itemBuilder: (context, index) => Container(
        padding:  const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
          Container( 
            padding:  const EdgeInsets.all(10),
            decoration: BoxDecoration(  
              color:  shortcuts[index]["color"] as Color,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Icon(shortcuts[index]["icon"] as IconData, color: Colors.white,),
          ),
          const SizedBox(width: 20,),
          Text(shortcuts[index]["label"] as String)
        ]),
      ),
      );
  }
}