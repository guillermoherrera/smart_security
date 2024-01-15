import 'package:flutter/material.dart';
import '/widget/widgets.dart';

class BotonPanicoPage extends StatefulWidget {
  const BotonPanicoPage({super.key});

  @override
  State<BotonPanicoPage> createState() => _BotonPanicoPageState();
}

class _BotonPanicoPageState extends State<BotonPanicoPage> {
  
  dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmar'),
          content: const Text('.'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Pedir Ayuda'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  pedirAyuda(BuildContext context){ 
    dialogBuilder(context);
  }

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: AuthBackground(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ButtonCircle(
                enable: true, 
                texto: 'Botón\nde\nPánico',
                onTap: () => pedirAyuda(context),
                onLongPress: (){},
              ),
            ],
          ),
        )
      ),
    );
  }
}