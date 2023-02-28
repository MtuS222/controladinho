import 'package:controladinho/shared/widgets/meu_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class LoginMenu extends StatefulWidget {
  const LoginMenu({super.key});

  @override
  State<LoginMenu> createState() => _LoginMenuState();
}

class _LoginMenuState extends State<LoginMenu> {
  final usuario = TextEditingController();
  final senha = TextEditingController();

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
          MeuTextFormField(
            hintText: 'Usuário',
            controller: usuario,
            validator: (value) {
              Validatorless.cpf('humm');
              Validatorless.required('tome');
              return null;
            },
          ),
          const SizedBox(height: 20),
          MeuTextFormField(
            obscureText: true,
            hintText: 'Senha',
            controller: senha,
            validator: (value) => 'tome',
          ),
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    if (usuario.text == 'admin' && senha.text == 'admin') {
                      Navigator.pushNamed(context, '/home');
                    }
                    print('EROU');
                  },
                  child: const Text('Entrar')),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/sing-in'),
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
