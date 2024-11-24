import 'package:flutter/material.dart';
import 'package:zerogrant_package_widgets/zerogrant_widgets_extensions.dart';
import 'package:zerogrant_package_widgets/l10n/app_localizations.dart';

class ZerograntEmailInput extends StatefulWidget {
  final TextEditingController? controller;
  const ZerograntEmailInput({super.key, this.controller});

  @override
  State<StatefulWidget> createState() => _ZerograntEmailInputState();
}

class _ZerograntEmailInputState extends State<ZerograntEmailInput> {
  @override
  Widget build(BuildContext context) {
    var translate = AppLocalizations.of(context);

    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return translate.inputEmpty;
        } else if (!value.isValidEmail()) {
          return translate.inputInvalidEmail;
        }
        return null;
      },
    );
  }
}
