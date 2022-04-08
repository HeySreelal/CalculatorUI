import 'package:flutter/material.dart';

class CalculatorBody extends StatelessWidget {
  const CalculatorBody({
    Key? key,
    required bool darkTheme,
  })  : _darkTheme = darkTheme,
        super(key: key);

  final bool _darkTheme;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomRight,
        child: Text(
          "0",
          style: Theme.of(context).textTheme.headline2?.copyWith(
                color: _darkTheme ? Colors.white : Colors.black,
              ),
        ),
      ),
    );
  }
}
