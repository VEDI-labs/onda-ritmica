
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/widgets/sound/gap.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/logo.dart';
import 'card.dart';


class GridLayOut extends StatelessWidget{
  final QuerySnapshot x;
  const GridLayOut({Key key, this.x}) : super(key: key);
  
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          Align(
            alignment: Alignment.centerLeft,
            child: Logo( //esto se debería de quitar cuando ya tenga imagenes que cargar
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
              for (var i = 0; i < x.size; i++) //esto es para hacer más de uno de los elementos, scroll dinamico es lo que yo quería
                MyCard(
                  nombre: x.docs[i].data()['name'],
                  autor: x.docs[i].data()['author'],
                  file: x.docs[i].data()['file'],
                  picture: x.docs[i].data()['picture'],
                  length: x.docs[i].data()['length'],
                  tag: x.docs[i].data()['tags'], //as List<String>,
                ), 
            ],
          ),
        ],
      ),
    );
  }
  



}