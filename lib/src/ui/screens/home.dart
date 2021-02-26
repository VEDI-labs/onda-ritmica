import 'package:flutter/material.dart';
import 'package:onda_ritmica/src/ui/screens/devices.dart';
import 'package:onda_ritmica/src/ui/screens/perfil.dart';
import 'package:onda_ritmica/src/ui/screens/sound.dart';
import 'package:onda_ritmica/src/ui/widgets/sound/navigationBar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> get _screens => [
        MySound(),
        Devices(),
        Perfil2(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onIndexChanged: _onIndexChanged,
      ),
    );
  }

  void _onIndexChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
