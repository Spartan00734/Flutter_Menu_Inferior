import 'package:flutter/material.dart';
import 'package:menu_inferior/pages/business.dart';
import 'package:menu_inferior/pages/education.dart';
import 'package:menu_inferior/pages/home.dart';
import 'package:menu_inferior/pages/info.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _PaginaActual = 0;
  List<Widget>_Paginas = [Home(), Education(), Business(), Info()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar',),
        ),
        body: _Paginas[_PaginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            setState(() {
              _PaginaActual = index;
            });
          },
          currentIndex: _PaginaActual,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Education',
              backgroundColor: Colors.purple
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.green
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Help',
              backgroundColor: Colors.red
              ),
          ]
          ),
      ),
    );
  }
}