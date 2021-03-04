import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/screens/home.dart';
import 'package:flutter_splash/flutter_splash.dart';
import 'package:onda_ritmica/src/ui/screens/login.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Splash(
      seconds: 7,
      navigateAfterSeconds: goTo(),
      image: Image.asset('assets/images/logo.png'),
      title: Text('Cargando tu experiencia Resiliente',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20.0)),
      backgroundColor: Theme.of(context).primaryColor,
      photoSize: 100.0,
      loaderColor: Colors.red,
    );
  }

  Widget goTo() {
    if (auth.currentUser == null) {
      return LoginScreen();
    } else {
      return HomeScreen();
    }
  }
}
