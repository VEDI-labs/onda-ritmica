import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/screens/new_device.dart';

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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Redirigir a pantalla de nuevo despliegue
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewDevice()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
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
