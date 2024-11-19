import 'package:flutter/material.dart';

class ZerograntPrimaryButton extends StatefulWidget {
  final String text;
  final Function() onPress;
  const ZerograntPrimaryButton(
      {super.key, required this.text, required this.onPress});

  @override
  State<StatefulWidget> createState() => _ZerograntPrimaryButtonState();
}

class _ZerograntPrimaryButtonState extends State<ZerograntPrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.onPress();
      },
      child: Text(widget.text),
    );
  }
}
