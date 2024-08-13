import 'dart:convert';

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int data = 0;

  void sayiarttirma() {
    setState(() {
      data = data + 1;
    });
  }

  void sayieksiltme() {
    setState(() {
      data = data - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ZEYNEBİ ÇOK SEVİYORUMM"),
            Text(data.toString()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  sayiarttirma();
                },
                child: Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  sayieksiltme();
                },
                child: Icon(Icons.remove),
              ),
            )
          ],
        ),
      ),
    );
  }
}
