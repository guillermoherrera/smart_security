import 'package:flutter/material.dart';
import 'package:smart_security/ui/ui_files.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key, required this.child, this.header = true, this.mainBox = true});

  final Widget child;
  final bool? header;
  final bool? mainBox;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child:  Stack(
        children: [
          _MainBox(mainBox: mainBox),
          header == true ? _HeaderIcon() : Container(),
          child,
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: size.width * 0.25),
        child: const Column(
          children: [
             //Icon(Icons.person_pin_outlined, color: Colors.white, size: size.width * 0.40,),
             //Text('Hola !', textAlign: TextAlign.center,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
             SizedBox(height: 10),
             //Image(image: const AssetImage('assets/ICONO_RECONOCIMIENTO_FACIAL.png'), width: size.width * 0.35,),
          ],
        ),
      ),
    );
  }
}

class _MainBox extends StatelessWidget {
  const _MainBox({required this.mainBox});
  final bool? mainBox;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 1,
      decoration: _mainBackground(),
      child:  Stack(children: [
        SafeArea(child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.only(top: 100),
            width: 200,
            height: 100,
            child: const Placeholder(color: ColorPalette.colorSecundario,))//Image(image: AssetImage(mainBox == true ? 'assets/smartsecurity.jpeg' : 'assets/empty.png'), width: size.width * 0.80,),
        )),
        // Positioned(top: 90, left: 30,child: _Bubble()),
        // Positioned(top: -40, left: -30,child: _Bubble()),
        // Positioned(top: -50, right: -20,child: _Bubble()),
        // Positioned(bottom: -50, left: 10,child: _Bubble()),
        // Positioned(bottom: 120, right: 20,child: _Bubble()),
        // Positioned(top: 220, right: 20,child: _Bubble()),
        // Positioned(bottom: 320, right: 200,child: _Bubble()),
      ]),
    );
  }

  BoxDecoration _mainBackground() {
    return const BoxDecoration(
      gradient: LinearGradient(colors: [
        ColorPalette.colorPrincipal,
        ColorPalette.colorPrincipal,
      ])
    );
  }
}

class _Bubble extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.08)
        ),
    );
  }
}