import 'package:flutter/material.dart';
import 'package:smart_security/widget/widgets.dart';

import '../../ui/ui_files.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: HomeBackground(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: ColorPalette.colorBlanco,
                  shape: BoxShape.circle
                ),
                child: const Icon(Icons.person, size: 150, color: ColorPalette.colorPrincipal))
              ),
              const SizedBox(height: 5),
              const SizedBox(height: 10),
              const Divider(),
              detallePerfil('Nombre:', 'Guillermo Herrera'),
              detallePerfil('Dirección:', 'Nombre Calle #001 Colonia 00000 Ciudad, Estado'),
              detallePerfil('Celular:', '(987) 654-32-10'),
              detallePerfil('Mostrar Celular:', 'Sí'),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(50, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft),
                child: const Text('Cerrar Sesión', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.colorPrincipal),),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, 'login');
                }
              ),
            ],
          ),
        )),
    );
  }

  Widget detallePerfil(String labelDetalle, String value){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(labelDetalle, style: TextStyles.tStyleBold14,),
              Flexible(child: Text(value, style: TextStyles.tStyleNormal14, textAlign: TextAlign.end,))
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}