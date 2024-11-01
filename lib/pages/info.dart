import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Bienvenido a Info', style: TextStyle(fontSize: 22.0, color: Colors.red),),
      ),
    );
  }
}