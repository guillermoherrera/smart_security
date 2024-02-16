import 'package:flutter/material.dart';
import '/ui/ui_files.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.onPressed, required this.text});

  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,//()=>_displayBottomSheet(context, size),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: 40)),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          // If the button is pressed, return green, otherwise blue
          if (states.contains(MaterialState.pressed)) {
            return ColorPalette.colorPrincipal;
          }
          return Colors.black;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.black)
          )
        )
      ), 
      child: Text(text, style: TextStyles.tStyleNormalPrincipal18)
    );
  }
}