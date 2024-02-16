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
                ayuda();
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

  ayuda(){
    final snackBar = SnackBar(
      content: const Text('Se ha enviado el mensaje de Ayuda!'),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                onLongPress: ()async{
                  await Future.delayed(const Duration(seconds: 1));
                  ayuda();
                },
              ),
            ],
          ),
        )
      ),
    );
  }
}