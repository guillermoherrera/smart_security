import 'package:flutter/material.dart';
import '/ui/ui_files.dart';

class ButtonCircle extends StatelessWidget {
  const ButtonCircle({super.key, required this.enable, required this.texto, this.icono, this.onTap, this.onLongPress});
  final bool enable;
  final String texto;
  final IconData? icono;
  final Function()? onTap;
  final Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox.fromSize(
          size: const Size(280, 280),
          child: ClipOval(
            child: Material(
              color: !enable ? ColorPalette.colorPrincipalBajo : ColorPalette.colorSecundario,
              child: InkWell(
                splashColor: ColorPalette.colorPrincipal, 
                onTap: onTap, 
                onLongPress: onLongPress, 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    icono == null ? Container() : Icon(icono, size: 40, color: Colors.white.withOpacity(enable ? 1.0 : 0.3),), // <-- Icon
                    Text(texto, style: enable ? TextStyles.tStyleBold24 : TextStyles.tStyleBold24, textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
        ),
        //Text(texto, style: enable ? TextStyles.tStyleBold12 : TextStyles.tStyleSecBold12, textAlign: TextAlign.center,)
      ],
    );
  }
}