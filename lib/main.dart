import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.yellow,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: altura,
            width: largura,
            color: const Color(0xff030475),
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/128/9789/9789398.png',
              height: 200,
              width: 200,
            ),
          ),
          Container(color: Colors.white),
        ],
      ),
    );
  }
}
