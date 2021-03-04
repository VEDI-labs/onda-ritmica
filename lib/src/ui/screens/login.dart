import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/screens/home.dart';
import 'package:onda_ritmica/src/ui/screens/register.dart';
import 'package:onda_ritmica/src/ui/theme/color.dart';
import 'package:onda_ritmica/src/ui/widgets/common/gap.dart';
import 'package:onda_ritmica/src/ui/widgets/common/rythm_button.dart';
import 'package:onda_ritmica/src/ui/widgets/session/rythm_field.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = '';
  String _password = '';

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
                  alignment: Alignment.centerLeft,
                  child: Logo(
                    color: Colors.black,
                    size: 96.0,
                  ),
                ),
                Gap(),
                Text(description),
                Gap(),
                RythmField(
                  label: "Correo electrónico",
                  hint: "hola@biocretiva...",
                  onChanged: (email) {
                    setState(() {
                      _email = email;
                    });
                  },
                ),
                Gap(),
                RythmField(
                  label: "Contraseña",
                  hint: "********",
                  isPassword: true,
                  onChanged: (password) {
                    setState(() {
                      _password = password;
                    });
                  },
                ),
                Gap(size: 24.0),
                RythmButton(
                  text: "Iniciar sesion",
                  onPressed: _onLoginTap,
                  color: ButtonColor.Green,
                ),
                Gap(size: 24.0),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "¿Aún no tienes cuenta? ",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        TextSpan(
                          text: "Registrate aquí",
                          recognizer: TapGestureRecognizer()
                            ..onTap = _onRegisterTap,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: primary),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: primaryVariant,
              width: MediaQuery.of(context).size.width,
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '¿Deseas conocer mas sobre sonora resiliente y biocretiva?',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  Gap(),
                  Text(
                    'Visitanos en https://www.sonoraresiliente.com',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: secondary),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onLoginTap() {
    print(_email);
    print(_password);
    _login(_email, _password);
  }

  void _login(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      // Para movernos hacia otra pantalla
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } catch (e) {
      print(e.toString());
    }
  }

  void _onRegisterTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => RegisterScreen(),
      ),
    );
  }
}

final description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam metus nibh, tristique vel consectetur nec, aliquet et mauris. Fusce nibh purus, rutrum quis viverra ut, faucibus quis nibh.';
