import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/theme/color.dart';
import 'package:onda_ritmica/src/ui/theme/text.dart';
import './src/ui/screens/splash.dart';

void main() {
  runApp(RhythmApp());
}

class RhythmApp extends StatelessWidget {
  const RhythmApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primary,
        accentColor: secondary,
        textTheme: rythmTextTheme,
      ),
      home: SplashScreen(),
    );
  }
}
