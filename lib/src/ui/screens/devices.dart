import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/screens/new_device.dart';

class Devices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dispositivos"),
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
      body: FutureBuilder<QuerySnapshot>(
          future:
              FirebaseFirestore.instance.collection('resilient-objects').get(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              // <3> Retrieve `List<DocumentSnapshot>` from snapshot
              final List<DocumentSnapshot> documents = snapshot.data.docs;
              return ListView(
                  children: documents
                      .map((doc) => miCard(doc['name'], doc['type']))
                      .toList());
            }
            return Text('No tienes dispositivos resilientes registrados :(');
          }),
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
