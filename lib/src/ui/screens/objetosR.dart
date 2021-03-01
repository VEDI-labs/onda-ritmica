import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/theme/color.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/logo.dart';

class ObjetosR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView(
                  padding: const EdgeInsets.all(24.0),
                  shrinkWrap: true,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            miicono(Colors.black, Icons.arrow_back, ''),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Logo(
                        color: Colors.black,
                        size: 75.0,
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                            ),
                            Text('PLANTITA\n MAGICA',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                          width: 16.0,
                        ),
                        Container(
                          color: Color(0xffEEF7FE),
                          width: 160,
                          height: 120,
                          alignment: Alignment.center,
                          child: const Text(
                              "Una pequeña descripcion del bojeto resiliente, sus funciones o reseña historica"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                        ),
                        Text('CARACTERISTICAS GENERALES',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                      width: 10.0,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('Medidas   ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontWeight: FontWeight.w700)),
                                Text('***********',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Conexion   ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontWeight: FontWeight.w700)),
                                Text('***********',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Registrado   ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontWeight: FontWeight.w700)),
                                Text('***********',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Compatibilidad   ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontWeight: FontWeight.w700)),
                                Text('***********',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Procedimiento   ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontWeight: FontWeight.w700)),
                                Text('***********',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                          width: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            new Image.asset(
                              "assets/images/plantita.jpg",
                              width: 90.0,
                              height: 110.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                  width: 16.0,
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: primaryVariant,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    miicono(color, Icons.favorite_border, 'Me encanta'),
                    miicono(color, Icons.star_border, 'Añadir a \nfavoritos'),
                    miicono(color, Icons.music_video, 'Mis sonidos'),
                    miicono(color, Icons.share, 'Compartir'),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Column miicono(Color color, IconData icon, String texto) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            texto,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
