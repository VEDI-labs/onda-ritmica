import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/screens/login.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        // child: Logo(
        //   size: MediaQuery.of(context).size.width * 0.3,
        // ),
        // child: AnimatedLogo(
        //   size: MediaQuery.of(context).size.width * 0.3,
        // ),
        child: LoginScreen(),
      ),
    );
  }
}
