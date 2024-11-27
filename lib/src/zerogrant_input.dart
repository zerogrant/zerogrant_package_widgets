import 'package:flutter/material.dart';
import 'package:zerogrant_package_widgets/constants/zerogrant_constants.dart';

class ZerograntInput extends StatefulWidget {
  final TextEditingController? controller;
  final String placeHolder;

  const ZerograntInput({super.key, this.controller, required this.placeHolder});

  @override
  State<StatefulWidget> createState() => _ZerograntInputState();
}

class _ZerograntInputState extends State<ZerograntInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.text,
      cursorColor: Theme.of(context).colorScheme.primary,
      style: TextStyle(color: Theme.of(context).colorScheme.primary),
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(InputConstants.radius)),
        ),
        labelText: widget.placeHolder,
        enabledBorder: OutlineInputBorder(
          borderRadius:
              const BorderRadius.all(Radius.circular(InputConstants.radius)),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius:
              const BorderRadius.all(Radius.circular(InputConstants.radius)),
          borderSide:
              BorderSide(color: Theme.of(context).colorScheme.error, width: 2),
        ),
      ),
    );
  }
}
