import 'package:flutter/material.dart';

class FocusColorButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  FocusColorButton({required this.text, required this.onPressed});

  @override
  _FocusColorButtonState createState() => _FocusColorButtonState();
}

class _FocusColorButtonState extends State<FocusColorButton> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = _isFocused ? Colors.red : Colors.yellow;

    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _isFocused = hasFocus;
        });
      },
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
        ),
        child: Text(widget.text),
      ),
    );
  }
}