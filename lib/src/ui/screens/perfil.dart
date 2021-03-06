import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/logo.dart';

class Perfil2 extends StatefulWidget {
  @override
  Perfil createState() => Perfil();
}

class Perfil extends State<Perfil2> {
  bool contrasenia = true;
  bool bloquearvi = true;
  bool contrasenia1 = true;
  bool bloquearvi1 = true;
  String cambiocontrase = "";
  String cambiocontrase2 = "";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        // contruir
        if (snapshot.data == null) {
          return Text("Cargando..");
        } else {
          final user = snapshot.data.docs.last;
          //final profile = snapshot.data.docs.firstWhere((s) {
          // return s.data()["id"] == FirebaseAuth.instance.currentUser.uid;
          //});
          print(user.data().toString());

          return Scaffold(
            body: SafeArea(
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListView(
                    padding: const EdgeInsets.all(24.0),
                    shrinkWrap: true,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Logo(
                          color: Colors.black,
                          size: 75.0,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                        width: 16.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                          ),
                          Text('MI PERFIL',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(fontWeight: FontWeight.w700)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage:
                                NetworkImage(user.data()["picture"]),
                            foregroundColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                        width: 16.0,
                      ),
                      Row(
                        children: [
                          Text('Nombre   ',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(fontWeight: FontWeight.w700)),
                          Text(user.data()["name"],
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                        width: 16.0,
                      ),
                      Row(
                        children: [
                          Text('Correo electronico   ',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(fontWeight: FontWeight.w700)),
                          Text(user.data()["email"],
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Creador de sonidos',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(fontWeight: FontWeight.w700)),
                          Switch(
                            value: user.data()["isArtist"],
                            onChanged: (value) {
                              setState(() {
                                var isEnabled = value;
                                print("cambio que debemos hacer");
                                print(isEnabled);
                                cambiodecreador(isEnabled);
                              });
                            },
                            activeColor: Color(0xff3485EF),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Cambiar contraseña',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(fontWeight: FontWeight.w700)),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                        width: 16.0,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            cambiocontrase = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'contraseña',
                          labelStyle: Theme.of(context).textTheme.subtitle1,
                          contentPadding: EdgeInsets.fromLTRB(5, 7, 6, 5),
                          labelText: "contraseña",
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          suffix: contrasenia
                              ? InkWell(
                                  child: Icon(
                                    bloquearvi
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onTap: visibilitfunc,
                                )
                              : null,
                        ),
                        obscureText: contrasenia ? bloquearvi : false,
                      ),
                      SizedBox(
                        height: 20.0,
                        width: 20.0,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            cambiocontrase2 = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Confirma tu contraseña',
                          labelStyle: Theme.of(context).textTheme.subtitle1,
                          contentPadding: EdgeInsets.fromLTRB(5, 7, 6, 5),
                          labelText: "Confirma tu contraseña",
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          suffix: contrasenia1
                              ? InkWell(
                                  child: Icon(
                                    bloquearvi1
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onTap: visibilitfunc1,
                                )
                              : null,
                        ),
                        obscureText: contrasenia1 ? bloquearvi1 : false,
                      ),
                      SizedBox(
                        height: 10.0,
                        width: 10.0,
                      ),
                      RaisedButton(
                        disabledColor: Colors.amber,
                        child: Text(
                          "CAMBIAR CONTRASEÑA",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.white),
                        ),
                        elevation: 2.0,
                        splashColor: Color(0xff00D8A4),
                        color: Color(0xff00D8A4),
                        onPressed: () async {
                          if (cambiocontrase == cambiocontrase2) {
                            cambiocontra(cambiocontrase);
                          } else {}
                        },
                        padding: const EdgeInsets.symmetric(),
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Colors.white,
                            width: 1.2, // BORDE
                          ),
                        ),
                      ),
                      RaisedButton(
                        disabledColor: Colors.amber,
                        child: Text(
                          "CERRAR SESION",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.white),
                        ),
                        elevation: 2.0,
                        splashColor: Color(0xff00D8A4),
                        color: Color(0xff00D8A4),
                        onPressed: () async {
                          await FirebaseAuth.instance.signOut();
                        },
                        padding: const EdgeInsets.symmetric(),
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Colors.white,
                            width: 1.2, // BORDE
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      },
      future: FirebaseFirestore.instance.collection('profiles').get(),
      initialData: null,
    );
  }

  void visibilitfunc() {
    setState(() {
      bloquearvi = !bloquearvi;
    });
  }

  void visibilitfunc1() {
    setState(() {
      bloquearvi1 = !bloquearvi1;
    });
  }

  void cambiocontra(String contra) async {
    await FirebaseAuth.instance.currentUser.updatePassword(contra);
  }

  void cambiodecreador(bool creador) async {
    await FirebaseFirestore.instance
        .collection('profiles')
        .doc('ay1hH7fMIeRG34WyJbT3')
        .update({'isArtist': creador});
  }
}
