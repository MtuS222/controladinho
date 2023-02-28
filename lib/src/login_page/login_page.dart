import 'package:flutter/material.dart';
import 'widgets/login_menu.dart';

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
