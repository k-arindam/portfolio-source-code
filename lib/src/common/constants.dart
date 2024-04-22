import 'package:flutter/material.dart';

abstract class Constants {
  static const String kAppName = "Arindam Karmakar";
  static const String kAppVersion = "1.0.0";

  static const Color kPurple = Color.fromRGBO(157, 30, 115, 0.792);

  static const List<Map> socialLinks = [
    {
      "link": "https://github.com/k-arindam",
      "img": "assets/images/github.png",
    },
    {
      "link": "https://in.linkedin.com/in/arindam-karmakar",
      "img": "assets/images/linkedin.png",
    },
    {
      "link": "tel:+91-8967331844",
      "img": "assets/images/phone.png",
    },
    {
      "link": "mailto:arindamk410@gmail.com",
      "img": "assets/images/email.png",
    },
  ];
}
