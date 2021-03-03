import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onIndexChanged;

  const NavigationBar({
    @required this.onIndexChanged,
    @required this.selectedIndex,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
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
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      onTap: onIndexChanged,
    );
  }
}
