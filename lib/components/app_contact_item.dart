import 'package:digital_wallet/models/recent_contacts.dart';
import 'package:flutter/material.dart';

class AppContactItem extends StatelessWidget {
  const AppContactItem(
      {super.key,
      required this.contactAvatar,
      required this.contactBank,
      required this.contactName});
  final String contactName;
  final String contactBank;
  final String contactAvatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(children: [
        CircleAvatar(
          backgroundImage: AssetImage(contactAvatar),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contactName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              contactBank,
              style:
                  TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 12),
            )
          ],
        )
      ]),
    );
  }
}

class AppContactList extends StatelessWidget {
  const AppContactList({super.key, required this.contacts});
  final List<Contact>  contacts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,

        itemBuilder: (context, index) => AppContactItem(
            contactAvatar: contacts[index].avatar,
            contactBank: contacts[index].bank,
            contactName: contacts[index].name),
        separatorBuilder: (context, index) => const SizedBox(
              height: 15,
            ),
        itemCount: contacts.length);
  }
}
