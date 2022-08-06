// ignore_for_file: camel_case_extensions, unnecessary_const, unnecessary_this, prefer_const_constructors, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';

extension colors on ColorScheme {
  static MaterialColor primary_app = const MaterialColor(
    0xffFF0000,
    const <int, Color>{
      50: primary,
      100: primary,
      200: primary,
      300: primary,
      400: primary,
      500: primary,
      600: primary,
      700: primary,
      800: primary,
      900: primary,
    },
  );

  static const Color primary = Color(0xff13484E);
  static const Color secondary = Color(0xffFCAA47);
  static const Color text =  Color(0xff02778B);
  static const Color Appbar =  Color(0xffF2F4F8);
  static const Color textColor1 = Color(0xff333333);
  static Color lightIcon1 = Colors.grey;

  Color get btnColor =>
      this.brightness == Brightness.dark ? whiteTemp : primary;

  Color get lightWhite =>
      this.brightness == Brightness.dark ? darkColor : const Color(0xffEEF2F9);

  Color get fontColor =>
      this.brightness == Brightness.dark ? whiteTemp : const Color(0xff222222);

  Color get gray =>
      this.brightness == Brightness.dark ? darkColor3 : Color(0xfff0f0f0);

  Color get simmerBase =>
      this.brightness == Brightness.dark ? darkColor2 : Colors.grey[300]!;

  Color get simmerHigh =>
      this.brightness == Brightness.dark ? darkColor : Colors.grey[100]!;

  static Color darkIcon = Color(0xff9B9B9B);

  static const Color grad1Color = Color(0xffF2F4F8);
  static const Color grad2Color = Color(0xffFF6363);
  static const Color lightWhite2 = Color(0xffEEF2F3);
  static const Color textColor = Color(0xff02778B);
  static const Color yellow = Color(0xfffdd901);

  static const Color red = Colors.red;

  Color get lightBlack =>
      this.brightness == Brightness.dark ? whiteTemp : const Color(0xff52575C);

  Color get lightBlack2 =>
      this.brightness == Brightness.dark ? white70 : const Color(0xff999999);

  static const Color darkColor = Color(0xff333333);
  static const Color darkColor2 = Color(0xff5E5E5E);
  static const Color darkColor3 = Color(0xff22343C);
  static const Color darkColor4 = Color(0xff999999);
  Color get white =>
      this.brightness == Brightness.dark ? darkColor2 : const Color(0xffFFFFFF);
  static const Color whiteTemp = Color(0xffFFFFFF);

  Color get black =>
      this.brightness == Brightness.dark ? whiteTemp : const Color(0xff000000);

  static const Color white10 = Colors.white10;
  static const Color white30 = Colors.white30;
  static const Color white70 = Colors.white70;

  static const Color black54 = Colors.black54;
  static const Color black12 = Colors.black12;
  static const Color disableColor = Color(0xffEEF2F9);
  static const Color whitebase = Color(0xffffffff);
  static const Color blackTemp = Color(0xff000000);

  Color get black26 =>
      this.brightness == Brightness.dark ? white30 : Colors.black26;
  static const Color cardColor = Color(0xffFFFFFF);

  Color get back1 => this.brightness == Brightness.dark
      ? Color(0xff1E3039)
      : Color(0x66a2d8fe);

  Color get back2 => this.brightness == Brightness.dark
      ? Color(0xff09202C)
      : Color(0x66bdb1ff);

  Color get back3 => this.brightness == Brightness.dark
      ? Color(0xff10101E)
      : Color(0x66EFAFBF);

  Color get back4 => this.brightness == Brightness.dark
      ? Color(0xff171515)
      : Color(0x66F9DED7);

  Color get back5 => this.brightness == Brightness.dark
      ? Color(0xff0F1412)
      : Color(0x66C6F8E5);
}

