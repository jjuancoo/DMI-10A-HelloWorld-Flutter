# FundamentosDart_210373
-----

## DESCRIPCION:

Proyecto de Clase para la Unidad 2 de la Asignatura de Desarrollo Móvil Integral (DMI) impartida
por el M.T.I Marco A. Ramírez Hernández

## HISTORIAL DE PRÁCTICAS:
|No. |Nombre|Potenciador|Estatus|
|--|--|--|--|
|20|Instalacion y Configuracion de Flutter|Pendiente|Activa|
|21|Hello World App|Pendiente|Activa|

## LISTA DE HERRAMIENTAS
![DART](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

## AUTOR
Elaborado por: Juan Manuel Cruz Ortiz [@jjuancoo](https://github.com/jjuancoo)

![Captura de pantalla 2024-11-13 223529](https://github.com/user-attachments/assets/ee266eb7-9f86-45c5-9196-5933efac566b)
![LOGO UNIVERSIDAD 1](https://github.com/user-attachments/assets/f0c4f5fc-173d-4ee0-b9ee-023ca1fe3ea9)

|Nombre|Potenciador|Estatus|
|--|--|
|Nombre del estudiante|Juan Manuel Cruz Ortiz|
|Carrera|Ingenieria en Desarrollo de Software|

## PRACTICA 21: COLORES DEL CONTADOR
### Objetivo 

Desarrollar una aplicación en Flutter que contenga un contador cuyo color cambie dinámicamente según su valor: azul cuando esté en cero, verde si es positivo y rojo si es negativo. Además, los botones de incremento y decremento modificarán su color de acuerdo al valor actual del contador. Para lograr una apariencia atractiva y coherente, se integrará una fuente personalizada usando Google Fonts.

### Descripción:

Este proyecto es una aplicación móvil en Flutter que incluye un contador con dos botones para aumentar o disminuir su valor. Los colores tanto del contador como de los botones variarán dependiendo del valor del contador:

    Azul cuando el contador esté en 0.
    Verde si el contador es positivo.
    Rojo si el contador es negativo.

La aplicación también emplea Google Fonts para una tipografía personalizada, mejorando el diseño visual de la interfaz. El estado del contador se gestionará eficientemente mediante el sistema de gestión de estado de Flutter.

## Codigo Fuente

### counter_functions_screen.dart

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

### Codigo Principal

    import 'package:flutter/material.dart';
    //import 'package:helloworld_flutter_200525/presebtacion/screens/counter/counter_screen.dart';
    import 'package:helloworld_flutter_200525/presebtacion/screens/counter/counter_functions_screen.dart';
    import 'package:google_fonts/google_fonts.dart';
    
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

### Resultados de la Practica

![Imagen de WhatsApp 2024-11-13 a las 22 43 42_34173336](https://github.com/user-attachments/assets/799c1fee-76ad-4265-81ed-4ace66239e98)
![Imagen de WhatsApp 2024-11-13 a las 22 43 42_eb07e492](https://github.com/user-attachments/assets/bc46c64b-b507-49fc-8cd1-c8d9334750a3)
![Imagen de WhatsApp 2024-11-13 a las 22 43 40_b4533953](https://github.com/user-attachments/assets/6aa9f16a-3651-4b40-8825-b42cdeb9d0a5)
![Imagen de WhatsApp 2024-11-13 a las 22 43 41_ae620ab9](https://github.com/user-attachments/assets/e5bd9076-8ff4-4545-a1a7-9e9d4f6ca8da)

