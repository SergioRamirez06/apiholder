import 'package:flutter/material.dart';

class jugadores extends StatefulWidget {
  const jugadores({super.key});

  @override
  State<jugadores> createState() => _jugadoresState();
}

class _jugadoresState extends State<jugadores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jugadores Historicos del real madrid'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Text('Ferenc Puskás'),
              CircleAvatar(
                radius: 120,
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Puskas_%281971%29.tif/lossy-page1-220px-Puskas_%281971%29.tif.jpg'),
              ),
              Divider(),
              Text(
                  'Ferenc Puskas nació el 2 de abril de 1927 en Budapest (Hungría). Hijo de Ferenc Purczeld y Margit Bíró Su debut se produjo en 1943 con el Kispest.En 1950 tuvo lugar su primer partido con la selección húngara. En 1948 pasó al equipo del Ejército húngaro, con el que consiguió 50 goles en el Campeonato de Liga.')
            ],
          ),
        ],
      ),
    );
  }
}
