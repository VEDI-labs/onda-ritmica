import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        style: Theme.of(context).textTheme.headline5),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage("assets/images/3.jpg"),
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
                    Text('Nombre ',
                        style: Theme.of(context).textTheme.subtitle1),
                    Text('Pablo Bautista',
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                  width: 16.0,
                ),
                Row(
                  children: [
                    Text('Correo electronico ',
                        style: Theme.of(context).textTheme.subtitle1),
                    Text('pablo@pixela.tech',
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                Row(
                  children: [
                    Text('Creador de sonidos ',
                        style: Theme.of(context).textTheme.subtitle1),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Color(0xff3485EF),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('Cambiar contraseña',
                        style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                  width: 16.0,
                ),
                TextFormField(
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
                  onPressed: () {},
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
}
