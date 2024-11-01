import 'package:flutter/material.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Bienvenido a Business', style: TextStyle(fontSize: 22.0, color: Colors.green),),
      ),
    );
  }
}