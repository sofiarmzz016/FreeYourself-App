// ignore_for_file: prefer_const_constructors
import 'package:firebase_core/firebase_core.dart';
// Poner de nuevo activo cuando se implemente página de Sofia
import 'package:free_yourself_app/pages/auth_page.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:free_yourself_app/ayuda.dart';
import 'package:free_yourself_app/bitacora.dart';
import 'package:free_yourself_app/grupos.dart';
import 'package:free_yourself_app/home.dart';
import 'package:free_yourself_app/recursos.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF3ED7CB)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
       home: AuthPage(), 
    );
  }
}

class HomePageWithBottomNavBar extends StatefulWidget {
  const HomePageWithBottomNavBar({Key? key}) : super(key: key);

  @override
  _HomePageWithBottomNavBarState createState() =>
      _HomePageWithBottomNavBarState();
}

class _HomePageWithBottomNavBarState extends State<HomePageWithBottomNavBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Bitacora(),
    const Recursos(),
    const GruposAyuda(),
    const SolicitarAyuda(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)), // Establecer radio de esquinas
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Bitácora',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded),
              label: 'Recursos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Grupos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.back_hand_rounded),
              label: 'Ayuda',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Colors.white,
          unselectedFontSize: 15,
          selectedFontSize: 17,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          backgroundColor: Color(0xFF10D2C3), 
        ),
      ),
    );
  }
}

