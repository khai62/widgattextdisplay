import 'package:flutter/material.dart';
import 'package:widgattext/pustaka.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Builder(
                    builder: (context) {
                      return Container(
                        alignment: Alignment.center,
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDAF8C6),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25.0)),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyHome()),
                            );
                          },
                          icon: const Icon(Icons.navigate_next),
                        ),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
