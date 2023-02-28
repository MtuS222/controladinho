import 'package:controladinho/src/home_page/home_page.dart';
import 'package:controladinho/src/sing_in_page/sing_in_page.dart';
import 'package:flutter/material.dart';
import 'login_page/login_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/sing-in': (context) => const SingInPage(),
      },
    );
  }
}
