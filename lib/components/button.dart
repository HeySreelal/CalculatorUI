import 'package:calculator/utils/theme.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String type;
  final int flex;
  final String buttonText;
  final VoidCallback onPressed;
  const CalculatorButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.flex = 1,
    this.type = "number",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextButton(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
          onPressed: onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => bgColor(),
            ),
            foregroundColor: MaterialStateProperty.resolveWith(
              (states) => fgColor(),
            ),
          ),
        ),
      ),
    );
  }

  Color bgColor() {
    switch (type) {
      case "number":
        return CalculatorTheme.numberButtonColor;
      case "operator":
        return CalculatorTheme.operationButtonColor;
      case "function":
        return CalculatorTheme.functionButtonColor;
      default:
        return CalculatorTheme.numberButtonColor;
    }
  }

  Color fgColor() {
    switch (type) {
      case "number":
        return CalculatorTheme.numberButtonTextColor;
      case "operator":
        return CalculatorTheme.operationButtonTextColor;
      case "function":
        return CalculatorTheme.functionButtonTextColor;
      default:
        return CalculatorTheme.numberButtonColor;
    }
  }
}
