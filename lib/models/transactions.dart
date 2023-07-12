import "package:flutter/material.dart";

class TransactionModel {
  final String type;
  final IconData icon;
  final Color color;
  final String date;
  final String amount;
  final String label;

  TransactionModel(
      {required this.amount,
      required this.color,
      required this.icon,
      required this.date,
      required this.label,
      required this.type});

  static List<TransactionModel> getTransactions() {
    return [
      TransactionModel(
          amount: "25000",
          color: Colors.red,
          icon: Icons.double_arrow,
          date: "17 Nov",
          label: "Minimarket Anugrah",
          type: "Grocery"),
      TransactionModel(
          amount: "50000",
          color: Colors.indigo,
          icon: Icons.games,
          date: "15 Nov",
          label: "Football Game",
          type: "Entrainement"),
      TransactionModel(
          amount: "326.800",
          color: Colors.teal,
          icon: Icons.camera,
          date: "15 Nov",
          label: "DSLR Camera",
          type: "Equipments"),
      TransactionModel(
          amount: "40000",
          color: Colors.amber,
          icon: Icons.local_post_office,
          date: "15 Nov",
          label: "Footaball ticket",
          type: "Office Items")
    ];
  }
}
