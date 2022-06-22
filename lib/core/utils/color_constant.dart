import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color tealA700 = fromHex('#00b495');

  static Color gray700 = fromHex('#666666');

  static Color redA200 = fromHex('#f95b51');

  static Color gray900 = fromHex('#222222');

  static Color bluegray100 = fromHex('#d0e5e3');

  static Color black9000f = fromHex('#0f000000');

  static Color gray200 = fromHex('#eeeeee');

  static Color green600 = fromHex('#24a869');

  static Color gray300 = fromHex('#dddddd');

  static Color gray50 = fromHex('#fafafa');

  static Color gray100 = fromHex('#f0f6f5');

  static Color teal300 = fromHex('#63b4ae');

  static Color whiteA70063 = fromHex('#63ffffff');

  static Color bluegray501 = fromHex('#549994');

  static Color bluegray600 = fromHex('#408681');

  static Color black900 = fromHex('#000000');

  static Color bluegray500 = fromHex('#438883');

  static Color bluegray400 = fromHex('#888888');

  static Color redA20019 = fromHex('#19f95b51');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
