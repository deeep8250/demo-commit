//hello deep  its just a test

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(sc());

class sc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sce(),
    );
  }
}

class sce extends StatefulWidget {
  State<StatefulWidget> createState() => sceState();
}

class sceState extends State {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
            child: Container(
                   child: Text(
            'your clicked the button  $count times',
            style: TextStyle(color: Colors.green, fontSize: 30),
          ),
        )),
        Positioned(
            bottom: 50,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    count += 1;
                  });
                },
                child: Icon(
                  Icons.plus_one,
                  size: 40,
                )))
      ]),
    );
  }
}
