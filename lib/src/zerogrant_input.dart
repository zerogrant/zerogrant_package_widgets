import 'package:flutter/material.dart';

class ZerograntInput extends StatefulWidget {
  final TextEditingController? controller;
  const ZerograntInput({super.key, this.controller});

  @override
  State<StatefulWidget> createState() => _ZerograntInputState();
}

class _ZerograntInputState extends State<ZerograntInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
    );
  }
}
