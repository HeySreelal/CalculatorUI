import 'package:calculator/components/body.dart';
import 'package:calculator/components/keypad.dart';
import 'package:calculator/components/theme_changer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  bool _darkTheme = true;

  void changeTheme() {
    setState(() {
      _darkTheme = !_darkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: ChangeThemeButton(
          onPressed: changeTheme,
          darkTheme: _darkTheme,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _darkTheme ? const Color(0xFF1E1E1E) : const Color(0xFFFFFFFF),
              _darkTheme ? const Color(0xFF666666) : const Color(0xFFD2D2D2),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            CalculatorBody(darkTheme: _darkTheme),
            KeyPad(darkTheme: _darkTheme),
          ],
        ),
      ),
    );
  }
}
