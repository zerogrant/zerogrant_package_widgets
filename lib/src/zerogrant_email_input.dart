import 'package:flutter/material.dart';
import 'package:zerogrant_package_form/zerogrant_form_extensions.dart';

class ZerograntEmailInput extends StatefulWidget {
  final TextEditingController? controller;
  const ZerograntEmailInput({super.key, this.controller});

  @override
  State<StatefulWidget> createState() => _ZerograntEmailInputState();
}

class _ZerograntEmailInputState extends State<ZerograntEmailInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.always,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        } else if (!value.isValidEmail()) {
          return "Check your email";
        }
        return null;
      },
    );
  }
}
