import 'package:flutter/material.dart';
import 'package:helloworld_app_210373/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        //Quitar el modo de desarrollo
        debugShowCheckedModeBanner: false,
        theme: ThemeData (
          colorSchemeSeed: Colors.blue
        ),
        home: (
          CounterScreen()
        ));
  }
}