enum From { me, other }

class Message {
  final String text;
  final String? img;
  final From from;

  Message({required this.text, this.img, required this.from});
}
