
class InternetUser{
  const InternetUser({required this.name, required this.bank, required this.avatar});
  final String name;
  final String bank;
  final String avatar;

  static InternetUser fakeUser(){
    return const InternetUser(name: "Thomas wise", bank: "0982 - 9283 - 2311", avatar: "assets/images/02.png");
  }
}
