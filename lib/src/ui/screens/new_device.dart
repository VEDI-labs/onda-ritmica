import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../theme/color.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/logo.dart';

class NewDevice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Logo(
            color: Colors.black,
            size: 75.0,
          ),
        ),
        Text(
          'Crea un nuevo objeto',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        FormularioIngresoDispositivo(),
      ],
    )));
  }
}

class FormularioIngresoDispositivo extends StatefulWidget {
  @override
  EstadoNuevoDispositivo createState() {
    return EstadoNuevoDispositivo();
  }
}

class EstadoNuevoDispositivo extends State<FormularioIngresoDispositivo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'Nombre Objeto Resiliente'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Ingresa un nombre del dispositivo';
                }
                return null;
              },
            ),
            // Separador
            SizedBox(height: 10),
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'Ubicación Objeto Resiliente'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Ingresa una ubicación';
                }
                return null;
              },
            ),
            // Separador
            SizedBox(height: 15),
            Text(
              'Añade una fotografía de tu objeto',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 23),
            ),
            SizedBox(height: 15),
            Wrap(children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: primary),
                onPressed: () {},
                child: Icon(Icons.camera),
              ),
            ]),
            SizedBox(height: 15),
            Text(
              'Etiquetas',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 23),
            ),
            // Etiqueta
            Wrap(
              spacing: 3,
              runSpacing: 0,
              children: [
                InputChip(
                  avatar: Icon(Icons.nature),
                  label: Text('Naturaleza'),
                  onSelected: (bool value) {},
                  onDeleted: () {},
                ),
                InputChip(
                  avatar: Icon(Icons.emoji_emotions),
                  label: Text('Emoción'),
                  onSelected: (bool value) {},
                  onDeleted: () {},
                ),
                InputChip(
                  avatar: Icon(Icons.color_lens),
                  label: Text('Verde'),
                  onSelected: (bool value) {},
                  onDeleted: () {},
                ),
              ],
            ),
            // Separador
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                // Guardar
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Guardando...')));
                    }
                  },
                  child: Text('Guardar'),
                ),
                // Cancelar
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancelar'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
