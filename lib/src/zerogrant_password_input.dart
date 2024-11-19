import 'package:flutter/material.dart';
import 'package:zerogrant_package_widgets/l10n/app_localizations.dart';

class ZerograntPasswordInput extends StatefulWidget {
  final TextEditingController? controller;
  const ZerograntPasswordInput({super.key, this.controller});

  @override
  State<StatefulWidget> createState() => _ZerograntPasswordInputState();
}

class _ZerograntPasswordInputState extends State<ZerograntPasswordInput> {
  @override
  Widget build(BuildContext context) {
    var translate = AppLocalizations.of(context);

    return TextFormField(
      controller: widget.controller,
      enableSuggestions: false,
      autocorrect: false,
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return translate.inputEmpty;
        } else if (value.length < 6) {
          return translate.inputInvalidPassword;
        }
        return null;
      },
    );
  }
}
