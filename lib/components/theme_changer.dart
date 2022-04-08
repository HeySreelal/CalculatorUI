import 'package:flutter/material.dart';

class ChangeThemeButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool darkTheme;
  const ChangeThemeButton({
    Key? key,
    this.onPressed,
    this.darkTheme = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
        border: Border.all(
          color: darkTheme ? Colors.white : Colors.black,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.dark_mode_outlined,
          size: 20,
          color: darkTheme ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
