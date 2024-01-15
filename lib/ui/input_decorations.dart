import 'package:flutter/material.dart';
import 'package:smart_security/ui/ui_files.dart';

class InputDecorations{
  static InputDecoration authInputDecoration({
    String?  hintText,
    required String  labelText,
    IconData? prefixIcon,
    final String? errorMessage,
    final Color? fillCollor = ColorPalette.colorSecundario,
    final Function()? suffixIconOnPressed,
    final bool? visibility,
    final IconData iconField = Icons.person,
  }){
    return InputDecoration(
      isDense: true,
      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)) ,borderSide: BorderSide(color: Color.fromRGBO(111, 76, 158, 1))),
      enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)) ,borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1))),
      disabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)) ,borderSide: BorderSide(color: Color.fromRGBO(111, 76, 158, 1), width: 1)),
      focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)) ,borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1), width: 1)),
      errorBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)) ,borderSide: BorderSide(color: Color.fromRGBO(209, 57, 41, 1), width: 1)),
      hintText: hintText,
      //labelText: labelText,
      labelStyle: const  TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorPalette.colorNegro),
      prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: const Color.fromRGBO(209, 57, 41, 1)) : null,
      alignLabelWithHint: false,
      label: Text(labelText),
      filled: true,
      fillColor: fillCollor,
      errorStyle: const TextStyle(color: Color.fromRGBO(111, 76, 158, 1), backgroundColor: Color.fromRGBO(255, 255, 255, 1), fontWeight: FontWeight.bold),
      errorText: errorMessage,
      counterText: "",
      suffixIcon: suffixIconOnPressed != null 
      ? IconButton(onPressed: suffixIconOnPressed, icon: Icon(visibility == true ? Icons.visibility_off : Icons.visibility), color: ColorPalette.colorNegro,) 
      : IconButton(onPressed: (){}, icon: Icon(iconField), color: ColorPalette.colorNegro,),
      floatingLabelStyle: const TextStyle(color: ColorPalette.colorNegro, fontWeight: FontWeight.bold, fontSize: 20, backgroundColor: ColorPalette.colorPrincipalBajo)
    );
  }
}