import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Importa el paquete Google Fonts

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  // Método para obtener el color del texto según el valor del contador
  Color _getCounterColor() {
    if (clickCounter == 0) return Colors.blue;
    if (clickCounter > 0) return Colors.indigoAccent;
    if (clickCounter < 0) return Colors.black87;
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contador Functions 210373',
          style: GoogleFonts.roboto(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter', // Muestra el contador
              style: GoogleFonts.roboto( // Aplica la fuente Robot
                fontSize: 160,
                fontWeight: FontWeight.w200,
                color: _getCounterColor(),
              ),
            ),
            Text(
              clickCounter.abs() == 1 ? 'Click' : 'Clicks',
              style: GoogleFonts.roboto( // Aplica la fuente Roboto
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter++; // Incrementa el contador
              });
            },
            backgroundColor: Colors.indigoAccent, // Botón +1 en verde
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter--; // Decrementa el contador
              });
            },
            backgroundColor: Colors.white24, // Botón -1 en rojo
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter = 0; // Resetea el contador
              });
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}