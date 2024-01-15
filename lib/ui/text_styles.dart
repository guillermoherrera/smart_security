import 'package:flutter/material.dart';
import 'package:smart_security/ui/ui_files.dart';

abstract class TextStyles{
  static const TextStyle tStyleBold12 = TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  static const TextStyle tStyleBold14 = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  static const TextStyle tStyleBold24 = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  static const TextStyle tStyleNormal14 = TextStyle(fontSize: 14);
  static const TextStyle tStyleNormal16 = TextStyle(fontSize: 16);
  static const TextStyle tStyleNormal18 = TextStyle(fontSize: 18);

  static const TextStyle tStyleNormalPrincipal18 = TextStyle(fontSize: 18, color: ColorPalette.colorBlanco);

  static const TextStyle tStyleSecBold12 = TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: ColorPalette.colorSecundario);
  static const TextStyle tStyleSecBold18 = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorPalette.colorSecundario);
  static const TextStyle tStyleSecBold24 = TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: ColorPalette.colorSecundario);
}