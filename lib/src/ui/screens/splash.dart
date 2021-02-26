import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/screens/home.dart';
import 'package:flutter_splash/flutter_splash.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Splash(
        seconds: 7,
        navigateAfterSeconds: HomeScreen(),
        image: Image.asset('assets/images/logo.png'),
        title: Text('Cargando tu experiencia Resiliente',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0)),
        backgroundColor: Theme.of(context).primaryColor,
        photoSize: 100.0,
        loaderColor: Colors.red);
  }
}
