
import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/widgets/common/gap.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/logo.dart';

class FormS extends StatefulWidget {
  @override
  _FormSState createState() => _FormSState();
}

class _FormSState extends State<FormS> {
  @override
  Widget build(BuildContext context) {
    bool val=false;
        return Scaffold(          
          body: Stack(            
            children: [
              ListView(
                padding: EdgeInsets.only(bottom: 120.0),
                children: <Widget>[
                  Gap(),
                  Gap(),
                  Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FlatButton(
                            onPressed: (){
                                Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left, 
                              size: 46.0,
                            ),
                            )
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Logo(
                            color: Colors.black,
                            size: 106.0,
                            ),
                        ),
                      ),
                      Gap(),
                      Text(
                    "   Nuevo Sonido", 
                    style: Theme.of(context).textTheme.headline2,
                    textScaleFactor: 0.86,
                  ),
                  Gap(),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.insert_photo, 
                      size: 156.0,
                    ),
                  ),
                  for (var i = 0; i < 2; i++) 
                    Gap(),
                  GridView.count(
                    padding: const EdgeInsets.all(20.0),
                    crossAxisCount: 2,
                    shrinkWrap: true,//le dice: el espacio que ocupes es el minimo, esto es para que no haya error con el listview
                    physics: ClampingScrollPhysics(), //le dice que el padre maneja el scroll no él widget
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 80, 15, 30),
                        child: RaisedButton(
                          onPressed: (){},
                          elevation: 4.0,
                          color: Theme.of(context).primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          shape: StadiumBorder(
                            side: BorderSide(
                              width: 1.2,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Gap(),
                              Icon(
                                Icons.folder_open, 
                                size: 26.0,
                              ),
                              Text(
                                "Seleccionar",
                                style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 80, 15, 30),
                        child: RaisedButton(
                          onPressed: (){},
                          elevation: 4.0,
                          child: Row(
                            children: <Widget>[
                              Gap(),
                              Icon(
                                Icons.stop_circle, 
                                color: Colors.red,
                                size: 26.0,
                              ),
                              Gap(),
                              Text(
                                "Grabar",
                                style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              
                            ],
                          ),
                          color: Theme.of(context).primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          shape: StadiumBorder(
                            side: BorderSide(
                              width: 1.2,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // aquí ya llevo todo lo de arriba de los botones, includos dichos botones
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                            hintText: 'Título',
                            border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Gap(),
                Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                            hintText: 'Descripción',
                            border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Gap(),
                  Text(
                    "     Tags",
                    style: Theme.of(context).textTheme.headline4,
                    textScaleFactor: 0.86,
                    ),
                    Gap(),
                    for (var i = 0; i < 5; i++)
                    Row(
                    children: <Widget>[
                      Text(
                        
                          "         Naturaleza",
                          style: Theme.of(context).textTheme.headline5,
                          textScaleFactor: 0.86,
                      ),
                        Checkbox(
                        value: val, 
                        onChanged: (bool value){
                          print(value);
                          setState(() {
                            val=value;
                          });
                        },
                      ),
                      Gap(),
                    ]
                ),
                Gap(),
                //###############Boton para subir################
                Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: RaisedButton(
                      onPressed: (){},
                      elevation: 4.0,
                      child: Row(
                            children: <Widget>[
                              for (var i = 0; i < 8; i++) 
                              Gap(),
                              Icon(
                                Icons.file_upload, 
                                size: 26.0,
                              ),
                              Text(
                                "Upload",
                                style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              
                            ],
                          ),
                      color: Theme.of(context).accentColor,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1.2,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ),
                  ),
            ]
          ),
          Gap(),
          Align(
            
             alignment: Alignment.bottomCenter,
             child: Container(
               padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
              color: Theme.of(context).primaryColorDark,
              width: MediaQuery.of(context).size.width,
              height: 99.0,
            )
          ),
          
        ],
      ),
    );
  }
}