import 'package:flutter/material.dart';


class NavigationBar extends StatefulWidget {
 
  
  NavigationBar({Key key}):super(key: key);
  @override
  _MyBar createState() => _MyBar();
  
}

class _MyBar extends State<NavigationBar> {
int _selectedIndex = 0;
  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        
        backgroundColor: Theme.of(context).primaryColorDark,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            label: 'Mis Sonidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Mis Dispositivos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome),
            label: 'Mi Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
    );
  }
}