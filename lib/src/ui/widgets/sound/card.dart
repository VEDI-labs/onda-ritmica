//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String nombre,autor,file,picture;
  final int length;
  final List<dynamic> tag;
  final int cantTag;
  MyCard({Key key, this.nombre, this.autor, this.file, this.picture, this.length, this.tag, this.cantTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        
        margin: EdgeInsets.fromLTRB(20, 15, 20, 9.177),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          splashColor: Theme.of(context).accentColor,
          onTap: () {
          },
          child: Column(
            
            children: <Widget>[  
              Container(
                height: MediaQuery.of(context).size.height * 0.116,
                width: double.infinity,
                child: Image.network(
                  picture,
                  fit: BoxFit.cover,
                ),
              ),
              FlatButton(
                height: MediaQuery.of(context).size.height * 0.09,
                minWidth: MediaQuery.of(context).size.width * 1.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                autofocus: true,
                splashColor: Colors.cyan,
                onPressed: () {
                  /*...*/
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    nombre,
                  ),
                  //child: Column(
                    //children: [
                      //for (var i = 0; i < tag.length; i++) 
                      //Text(
                        //tag[i].toString(),
                      //),
                    //],
                  //),
                )
              )
            ],
        ),
        ),
      );
  }
}