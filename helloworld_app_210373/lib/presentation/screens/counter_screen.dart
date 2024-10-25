import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

int clickCounter = 0;

//TODO: crear una variable para el contador y un botón para reiniciar el contador
//TODO: Tarea quitar la s cuando un clik y cuando sea más

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador 210373'),
        actions: [
          IconButton(
            onPressed: () {
              // Handle reset button press
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 150, fontWeight: FontWeight.w400),
            ),
            Text(
              clickCounter == 1 ? 'Clik' : 'Clicks',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
