import 'package:digital_wallet/components/app_contact_item.dart';
import 'package:digital_wallet/models/recent_contacts.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text(
                      "Contact",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide:  BorderSide(
                              color: Colors.grey.withOpacity(0.2), width: 1, strokeAlign: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Search",
                      ),
                    ),
                    const Positioned(
                      right: 30,
                      top: 20,
                      child: Icon(Icons.search_rounded),
                    )
                  ],
                ),
          
                const SizedBox(height: 20,),
                Text("Recent contact", 
                textAlign: TextAlign.start,
                style : TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 13, textBaseline: TextBaseline.alphabetic)),
                
                const SizedBox(height: 10,),
              
               AppContactList(contacts: RecentContactList.getContacts()),
                Divider(height: 40, color: Colors.grey.withOpacity(0.2),),

                Text("Contacts", 
                textAlign: TextAlign.start,
                style : TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 13, textBaseline: TextBaseline.alphabetic)),
                const SizedBox(height: 10,),
               
               AppContactList(contacts: RecentContactList.getAllContact(),),

              ],
            ),
          ),
        ),
      )),
    );
  }
}
