import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              // padding: const EdgeInsets.all(20),
              fixedSize: const Size(110, 30),
              backgroundColor: const Color(0xff030475),
              foregroundColor: Colors.white),
        ),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              color: const Color(0xff030475),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/9789/9789398.png',
                fit: BoxFit.contain,
                height: 400,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(37.3),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xff030475),
                    ),
                  ),
                  child: const LoginMenu(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginMenu extends StatelessWidget {
  const LoginMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://www.ondaagil.com.br/configuracoes/7b4e637043d2e7caac092f6d650ccb19.png',
          ),
          const SizedBox(height: 70),
          const MeuTextFormField(hintText: 'Usuário'),
          const SizedBox(height: 20),
          const MeuTextFormField(obscureText: true, hintText: 'Senha'),
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Entrar')),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MeuTextFormField extends StatelessWidget {
  const MeuTextFormField({
    super.key,
    this.obscureText = false,
    required this.hintText,
  });
  final bool obscureText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
      ),
    );
  }
}
