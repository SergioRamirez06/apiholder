import 'package:flutter/material.dart';

class Cuenta extends StatefulWidget {
  const Cuenta({super.key});

  @override
  State<Cuenta> createState() => _CuentaState();
}

class _CuentaState extends State<Cuenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuenta'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Notificaciones de seguridad'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.key_off),
            title: Text('Claves de acceso'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.verified),
            title: Text('Verificacion en dos pasos'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone_forwarded),
            title: Text('Cambiar numero'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Direccion de correo electronico'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1),
            title: Text('Añadir cuenta'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Eliminar Cuenta'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
