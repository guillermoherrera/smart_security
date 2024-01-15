import 'package:flutter/material.dart';
import 'package:smart_security/ui/ui_files.dart';
import '/pages/01_login/login_form.dart';
import '/widget/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 150),
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    SizedBox(height: 30,),
                    LoginForm()
                  ],
                )
              ),
            ],
          ),
        )
      ),
      bottomNavigationBar: Container(
        color: ColorPalette.colorPrincipal,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(50, 30),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                alignment: Alignment.centerLeft),
              child: const Text('Contacto', style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white),),
              onPressed: ()=>(),
            ),
          ],
        ),
      ),
    );
  }
}