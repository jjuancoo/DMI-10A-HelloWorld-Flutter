import 'package:flutter/material.dart';
import 'package:helloworld_app_210373/presentation/screens/counter/counter_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld_app_210373/presentation/screens/counter/counter_functions_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.amaticScTextTheme(),
      ),
      home: const CounterFunctionsScreen(),
    );
  }
}