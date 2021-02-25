import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/widgets/sound/gap.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/logo.dart';

import 'card.dart';


class GridLayOut extends StatelessWidget{
  final int itemCount;
  const GridLayOut({Key key, this.itemCount=0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Logo(
              color: Colors.black,
              size: 86.0,
            ),
          ),
          Gap(),
          Text(
            "   MIS Sonidos".toUpperCase(), //el toUpperCase es para asegurar mayusculas
            style: Theme.of(context).textTheme.headline3,
            textScaleFactor: 0.90,

          ),
          Gap(),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,//le dice: el espacio que ocupes es el minimo, esto es para que no haya error con el listview
            physics: ClampingScrollPhysics(), //le dice que el padre maneja el scroll no él widget
            children: [ 
              for (var i = 0; i < itemCount; i++) //esto es para hacer más de uno de los elementos, scroll dinamico es lo que yo quería
                MyCard(), 
            ],
          ),
        ],
      ),
    );
  }
  



}