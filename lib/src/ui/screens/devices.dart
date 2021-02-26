import 'package:flutter/material.dart';

class Devices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dispositivos"),
        ),
        body: ListView(
          children: [
            miCard("Rosas Resilientes",
                " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu laoreet orci, in fermentum ligula."),
            miCard("Rosas Resilientes",
                " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu laoreet orci, in fermentum ligula."),
            miCard("Rosas Resilientes",
                " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu laoreet orci, in fermentum ligula."),
            miCard("Margaritas Resilientes",
                " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu laoreet orci, in fermentum ligula.")
          ],
        ));
  }
}

Card miCard(String titulo, String descripcion) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(titulo),
          subtitle: Text(descripcion),
          leading: Icon(Icons.home),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(onPressed: () => {}, child: Icon(Icons.delete))
          ],
        )
      ],
    ),
  );
}
