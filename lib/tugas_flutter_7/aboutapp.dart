import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'About This App',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            'aplikasi altarfagasi apliakasi yang bergerak dibidang travel dan bussines  yang bergerak dibidang import dan export ,',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: const Text('Back'),
          // ),
        ],
      ),
    );
  }
}
