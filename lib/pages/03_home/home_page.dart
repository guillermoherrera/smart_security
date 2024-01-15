import 'package:flutter/material.dart';
import 'package:smart_security/ui/ui_files.dart';
//import '/ui/text_styles.dart';
import 'package:smart_security/widget/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    void onItemTapped(int index) {
      switch (index) {
        case 0:
          //Navigator.pushNamed(context, 'home', arguments: 0);
          break;
        case 1:
          //Navigator.pushNamed(context, 'home', arguments: 0);
          break;
        case 2:
          //Navigator.pushNamed(context, 'notificaciones', arguments: 0);
          break;
        case 3:
          //Navigator.pushReplacementNamed(context, 'login', arguments: 0);
          break;
        case 4:
          //Navigator.pushReplacementNamed(context, 'login', arguments: 0);
          break;
        // case 5:
        //   Navigator.pushReplacementNamed(context, 'login', arguments: 0);
        //   break;
        default:
          //Navigator.pushNamed(context, 'home', arguments: 0);
      }
    }

    return  Scaffold(
      body: HomeBackground(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CardContainer(
              backgroundColor: ColorPalette.colorBlanco,
              boxShadowColor: Colors.black45,
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    title: Text('Bienvenido Guillermo Herrera', style: TextStyles.tStyleNormal14,),
                    subtitle: Text('Usuario 001 - Dirección', style: TextStyles.tStyleNormal14),
                  )
                ],
            ),),
            const SizedBox(height: 20),
            
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 20,
                  children: [],
                ),
              ),
            ),
            const SizedBox(height: 20),
            CardContainer(
              backgroundColor: ColorPalette.colorBlanco,
              boxShadowColor: Colors.black45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Lista', style: TextStyles.tStyleBold14,),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.45,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Material(
                            child: InkWell(
                              splashColor: ColorPalette.colorPrincipalMedio,
                              onTap: (){},
                              child: ListTile(
                                dense: true,
                                leading:  Container(
                                  padding: const EdgeInsets.all(0),
                                  decoration: const BoxDecoration(
                                    color: ColorPalette.colorBlanco,
                                    shape: BoxShape.circle
                                  ),
                                  child: const Icon(Icons.note_alt_outlined, color: ColorPalette.colorPrincipal,)),
                                title: const Text('Item', style: TextStyles.tStyleBold14,),
                                subtitle: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Item descripción', style: TextStyles.tStyleNormal14),
                                  ],
                                ),
                                trailing: const IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios_outlined, color: ColorPalette.colorPrincipal)),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ),
          ],
        )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.emergency_outlined),
            label: 'Btn Panico',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Opciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Directorio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_on_outlined),
            label: 'Notificaciones',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.logout_outlined),
          //   label: 'Salir',
          // ),
        ],
        selectedItemColor: ColorPalette.colorSecundario,
        unselectedItemColor: ColorPalette.colorSecundario,
        backgroundColor: ColorPalette.colorPrincipal,
        onTap: onItemTapped,
      ),
    );
  }
}