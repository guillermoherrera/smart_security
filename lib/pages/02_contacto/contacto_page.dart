import 'package:flutter/material.dart';
import 'package:smart_security/ui/ui_files.dart';
import 'package:smart_security/widget/widgets.dart';

class ContactoPage extends StatefulWidget {
  const ContactoPage({super.key});

  @override
  State<ContactoPage> createState() => _ContactoPageState();
}

class _ContactoPageState extends State<ContactoPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthBackground(
        mainBox: false,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contacto', style: TextStyles.tStyleBold24,),
              SizedBox(height: 10),
              Text('Empresa', style: TextStyles.tStyleBold18,),
              Text('www.empresa.com', style: TextStyles.tStyleBold18,),
              Text('(987)654-32-10', style: TextStyles.tStyleBold18,),
              SizedBox(height: 50),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.facebook, color: ColorPalette.colorSecundario, size: 70,),
                  Icon(Icons.flutter_dash, color: ColorPalette.colorSecundario, size: 70),
                  Icon(Icons.telegram, color: ColorPalette.colorSecundario, size: 70),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}