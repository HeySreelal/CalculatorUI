import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  final bool darkTheme;
  const KeyPad({
    Key? key,
    this.darkTheme = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            darkTheme ? const Color(0xFF383838) : const Color(0xFFA1A1A1),
            darkTheme ? const Color(0xFF666666) : const Color(0xFF6C6C6C),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              CalculatorButton(
                buttonText: "AC",
                onPressed: () {},
                type: "function",
              ),
              CalculatorButton(
                buttonText: "<",
                onPressed: () {},
                type: "function",
              ),
              CalculatorButton(
                buttonText: "%",
                onPressed: () {},
                type: "function",
              ),
              CalculatorButton(
                buttonText: "/",
                onPressed: () {},
                type: "operator",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Second Row
              CalculatorButton(
                buttonText: "7",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "8",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "9",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "X",
                onPressed: () {},
                type: "operator",
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Thrid Row
              CalculatorButton(
                buttonText: "4",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "5",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "6",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "-",
                onPressed: () {},
                type: "operator",
              ),
            ],
          ),
          // Thrid Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                buttonText: "1",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "2",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "3",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "+",
                onPressed: () {},
                type: "operator",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Thrid Row
              CalculatorButton(
                buttonText: "0",
                onPressed: () {},
                flex: 2,
              ),
              CalculatorButton(
                buttonText: ".",
                onPressed: () {},
                type: "number",
              ),
              CalculatorButton(
                buttonText: "=",
                onPressed: () {},
                type: "operator",
              ),
            ],
          )
        ],
      ),
    );
  }
}
