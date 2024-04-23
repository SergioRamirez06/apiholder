import 'package:flutter/material.dart';
import 'package:flutter_application_1/cuenta.dart';

class programa extends StatefulWidget {
  const programa({super.key});

  @override
  State<programa> createState() => _programaState();
}

class _programaState extends State<programa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('programador'),
      ),
      body: Column(
        children: [
          Text('Sergio Ramirez'),
          CircleAvatar(
            radius: 120,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2k9l7UTWro05VIhfWuFR-pmQi_V1W3XpSwRxTQ6Xfzg&s'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.key),
            title: Text('Cuenta'),
            subtitle: Text('Notificaciones de seguridad, cambiar numero'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Cuenta(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.lock_rounded),
            title: Text('Privacidad'),
            subtitle: Text('Bloquear contactos, mensajes temporales'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Avatar'),
            subtitle: Text('Crear, editar, administrar foto de perfil'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chats'),
            subtitle: Text('Temas, fondos de pantallas, historial de chat'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificacion'),
            subtitle: Text('Tonos de mensajes, grupos de llamadas'),
            onTap: () {},
          ),
          Divider(),
        ],
      ),
    );
  }
}
