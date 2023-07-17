

class Contact{
  Contact({required this.name, required this.bank, required this.avatar});
  final String name;
  final String bank;
  final String avatar;
}


class RecentContactList {

  static List<Contact> getContacts(){
    return [
      Contact(name: "Samantha", bank: "bank 0987 3422 8756", avatar: "assets/images/01.png"),
      Contact(name: "Rose Hope", bank: "bank 0987 3422 8756", avatar: "assets/images/02.png"),
      Contact(name: "Angela Smith", bank: "bank 0987 3422 8756", avatar: "assets/images/03.png"),
      Contact(name: "Angela Smith", bank: "bank 0987 3422 8756", avatar: "assets/images/03.png"),



    ];
  }

 
  static List<Contact> getAllContact(){
    return [
      Contact(name: " Andrea Summer", bank: "Bank - 0987 3422 87566", avatar: "assets/images/01.png"),
      Contact(name: " Karen William", bank: "Bank - 0987 3422 87566", avatar: "assets/images/03.png"),
      Contact(name: " Thomas Wiser", bank: "Bank - 0987 3422 87566", avatar: "assets/images/02.png"),
      Contact(name: " Thomas Wiser", bank: "Bank - 0987 3422 87566", avatar: "assets/images/02.png"),
      Contact(name: " Thomas Wiser", bank: "Bank - 0987 3422 87566", avatar: "assets/images/02.png"),
      Contact(name: " Thomas Wiser", bank: "Bank - 0987 3422 87566", avatar: "assets/images/02.png"),
      Contact(name: " Thomas Wiser", bank: "Bank - 0987 3422 87566", avatar: "assets/images/02.png"),
      Contact(name: " Thomas Wiser", bank: "Bank - 0987 3422 87566", avatar: "assets/images/02.png"),
      Contact(name: " Thomas Wiser", bank: "Bank - 0987 3422 87566", avatar: "assets/images/02.png"),
      Contact(name: " Thomas Wiser", bank: "Bank - 0987 3422 87566", avatar: "assets/images/02.png"),



    ];
  }
}