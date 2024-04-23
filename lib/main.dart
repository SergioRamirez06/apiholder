import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/api.dart';
import 'package:flutter_application_1/interfaz/gridview.dart';
import 'package:flutter_application_1/interfaz/jugadores.dart';
import 'package:flutter_application_1/interfaz/programador.dart';

void main(List<String> args) {
  runApp(sergio());
}

class sergio extends StatelessWidget {
  const sergio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menu(),
    );
  }
}

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Primer menu'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF4CAF50),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 76, 175, 80)),
                accountName: Text(
                  "Real Madrid",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("Realmadrid@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOSWBf6Ab60wUJq-n8_t4VJDMmFGBGWiW0f7v_y0pFSw&s'),
                    )),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const menu(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person_2_outlined),
              title: Text('Jugadores'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const jugadores(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.work_history_outlined),
              title: Text('Soporte'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.perm_contact_cal_outlined),
              title: Text('Contacto'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.contacts_outlined),
              title: Text('Desarrolladores'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const programa(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Jugadores Historico'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const gridview(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('fotos'),
              onTap: () {
                Buscalbum().then((r) {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("API Post"),
                          ),
                          body: ListView.builder(
                            itemCount: r.length,
                            itemBuilder: (BuildContext context, int i) {
                              return ListTile(
                                leading: CircleAvatar(
                                    backgroundImage: NetworkImage(r[i].url)),
                                title: Text(r[i].title),
                                trailing: Text(r[i].albumId.toString()),
                              );
                            },
                          ),
                        );
                      });
                });
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text('Fundacion Real Madrid'),
          CircleAvatar(
            radius: 120,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOSWBf6Ab60wUJq-n8_t4VJDMmFGBGWiW0f7v_y0pFSw&s'),
          )
        ],
      ),
    );
  }
}
