import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Page'),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Voltar')),
          ],
        ),
      ),
    );
  }
}
