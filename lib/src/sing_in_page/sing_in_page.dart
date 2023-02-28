import 'package:flutter/material.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Cadastre-se'),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/'),
                  child: const Text('Voltar')),
            ],
          ),
        ),
      ),
    );
  }
}
