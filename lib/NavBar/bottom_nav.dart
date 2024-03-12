import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Function currentIndex;
  const NavBar({super.key, required this.currentIndex});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF30D5C8),
      iconSize: 25,
      selectedFontSize: 15,
      unselectedFontSize: 12,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Bitácora'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_collection_rounded),
          label: 'Recursos'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.back_hand_rounded),
          label: 'Ayuda'
        ),
      ]
    );
  }
}