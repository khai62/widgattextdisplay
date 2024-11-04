import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  image: const DecorationImage(
                      image: AssetImage('assets/ilmuan.png'),
                      fit: BoxFit.cover)),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  '∞',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              )),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Ilmuan Favorit'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Bagikan Apliksi ini'),
            onTap: () async {},
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Beri Penilaian'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Info Aplikasi'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                      backgroundColor: Colors.white,
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Tutup'))
                      ],
                      contentPadding: const EdgeInsets.all(20.0),
                      content: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(children: [
                            TextSpan(
                                text: 'Versi \n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: '1.0.0 \n',
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text: '\n Pengembang \n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: 'Khairuddin \n',
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text: '\n Sumber \n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: 'www.wikipedia.org',
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ]))));
            },
          ),
        ],
      ),
    );
  }
}
