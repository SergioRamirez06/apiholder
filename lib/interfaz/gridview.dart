import 'package:flutter/material.dart';
import 'package:flutter_application_1/ferencPuska.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jugadores Historico'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Puskas_%281971%29.tif/lossy-page1-220px-Puskas_%281971%29.tif.jpg'),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Ferenc Puskás'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ferencPuska(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuBqyDBPDd2Wym6H5JpLRN2v3e8sJvcX1MqGgrfDItNw&s'),
                  Center(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Alfredo Di Stéfano'),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk4XJrswcVC4QAMsSPmgns0TR7ezZEaorQKHGc6baV7w&s'),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Pelé'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsuWf7ClJvmNpztYJgI6hkcbWg6J-4MhzW-qO_z1P__w&s'),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Diego Maradona'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbT7iofSRti-Mx6pjbDvjKMJyQ-CbVkpj_mGbDLZFlNA&s'),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Lev Yashin'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/5/54/Franz_Beckenbauer_22-6-74.png'),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Franz Beckenbauer'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
