import 'package:flutter/material.dart';

import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'smart security',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (_)=> const LoginPage(),
        'contacto': (_)=> const ContactoPage(),
        'home': (_)=> const HomePage(),
        'botonPanico': (_)=> const BotonPanicoPage(),
        'perfil': (_)=> const PerfilPage(),
      }
    );
  }
}

