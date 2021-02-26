import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/theme/color.dart';
import 'package:onda_ritmica/src/ui/widgets/common/gap.dart';
import 'package:onda_ritmica/src/ui/widgets/common/rythm_button.dart';
import 'package:onda_ritmica/src/ui/widgets/session/rythm_field.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/logo.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key key}) : super(key: key);

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
                    size: 96.0,
                  ),
                ),
                Gap(),
                RythmField(
                  label: "Nombre",
                  hint: "José Perez",
                ),
                Gap(),
                RythmField(
                  label: "Correo electrónico",
                  hint: "hola@biocretiva...",
                ),
                Gap(),
                RythmField(
                  label: "Contraseña",
                  hint: "********",
                  isPassword: true,
                ),
                Gap(),
                RythmField(
                  label: "Confirma tu contraseña",
                  hint: "********",
                  isPassword: true,
                ),
                Gap(),
                Row(
                  children: [
                    Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: primary,
                    ),
                    Text('Soy creador de sonidos'),
                  ],
                ),
                Gap(size: 24.0),
                RythmButton(
                  text: "Crear cuenta",
                  onPressed: () {},
                  color: ButtonColor.Green,
                ),
                Gap(size: 24.0),
              ],
            ),
            Container(
              color: primaryVariant,
              width: MediaQuery.of(context).size.width,
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: Text(
                description,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam metus nibh, tristique vel consectetur nec, aliquet et mauris. Fusce nibh purus, rutrum quis viverra ut, faucibus quis nibh.';
