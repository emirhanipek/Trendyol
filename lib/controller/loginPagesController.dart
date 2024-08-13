import 'package:flutter/material.dart';

class MyColors {
  static const Color orange = Color.fromARGB(255, 255, 128, 0);
  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color input_bg = Color.fromARGB(255, 210, 210, 210);
  static const Color grey = Color.fromARGB(255, 83, 83, 83);
  static const Color black = Color.fromARGB(255, 0, 0, 0);
}

class ContainerRadius {
  static const BorderRadius borderRadius = BorderRadius.all(
    Radius.circular(10),
  );
}

class PagePadding {
  static const EdgeInsets all =
      EdgeInsets.only(top: 220, left: 70, bottom: 80, right: 70);
  static const EdgeInsets input_padding = EdgeInsets.only(left: 20, right: 20);
  static const EdgeInsets logo_padding =
      EdgeInsets.only(top: 50, bottom: 150, left: 120);
}

class ImgUrl {
  static const String trendyolLogo = 'assets/image/trendyol_logo.png';
  static const String gmailLogo = 'assets/image/gmail_logo.png';
  static const String facebookLogo = 'assets/image/facebook_logo.png';
}

class InputText {
  static const String emailHint = 'E-Posta';
  static const String passwordHint = 'Şifre';
  static const String hint1 = 'Üye Değil Misiniz?';
  static const String hint2 = 'Üye Ol';
  static const String hint3 = 'Üye Misin?';
  static const String hint4 = 'Giriş Yap';
}
