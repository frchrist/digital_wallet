import 'dart:io';

class InternetPackage {
  const InternetPackage(
      {required this.name, required this.amount, required this.decription});
  final String name;
  final String amount;
  final String decription;

  static List<InternetPackage> getAllPackage() {
    return [
      const InternetPackage(
          name: "Simple Package",
          amount: "FCFA 22 000",
          decription: "14 GB Internet + 2 GB Streaming, Active Period 30 days"),
           const  InternetPackage(
          name: "Simple Package",
          amount: "FCFA 50 000",
          decription: "14 GB Internet + 2 GB Streaming, Active Period 30 days"),
          const  InternetPackage(
          name: "Simple Package",
          amount: "FCFA 80 000",
          decription: "14 GB Internet + 2 GB Streaming, Active Period 30 days"),
    ];
  }
}
