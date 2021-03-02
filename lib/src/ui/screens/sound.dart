import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/widgets/sound/GridLayout.dart';

import 'NewSounds.dart';

class MySound extends StatefulWidget {
  MySound({Key key}) : super(key: key);

  @override
  _MySound createState() => _MySound();
}

class _MySound extends State<MySound> {
  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: GridLayOut(itemCount: itemCount),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //setState(() {
            //esto es para cambiar las cosas dentro de este widget
            //itemCount++;
          //});
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return FormS();
          }));
        },
        child: Icon(Icons.add_circle_outline_sharp),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
