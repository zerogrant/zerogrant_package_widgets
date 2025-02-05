import 'package:flutter/material.dart';

class ZerograntH1Text extends StatelessWidget {
  final String text;

  const ZerograntH1Text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).colorScheme.primary),
    );
  }
}

class ZerograntLabelText extends StatelessWidget {
  final String text;

  const ZerograntLabelText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        color: Color(0xff898989),
      ),
    );
  }
}
