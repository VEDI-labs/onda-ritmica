import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/screens/devices.dart';
import 'package:onda_ritmica/src/ui/widgets/splash/animated_logo.dart';
import 'package:onda_ritmica/src/ui/theme/color.dart';

import '../theme/color.dart';
import '../theme/color.dart';

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
        child: ElevatedButton(
          child: AnimatedLogo(
            size: MediaQuery.of(context).size.width * 0.3,
          ),
          style: ElevatedButton.styleFrom(primary: primary),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Devices()),
            );
          },
        ),
      ),
    );
  }
}
