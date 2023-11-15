import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var image = 'antes';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('DesAI',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              const Text('Diseño de interiores con Inteligencia Artificial'),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/$image.png',
                        width: 500, height: 200, fit: BoxFit.fill)),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.star_border_purple500_rounded),
                label: const Text('Generar magia'),
                onPressed: () {
                  setState(() {
                    image = 'despues';
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
