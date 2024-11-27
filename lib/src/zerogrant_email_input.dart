import 'package:flutter/material.dart';
import 'package:zerogrant_package_widgets/constants/zerogrant_constants.dart';
import 'package:zerogrant_package_widgets/zerogrant_widgets_extensions.dart';
import 'package:zerogrant_package_widgets/l10n/app_localizations.dart';

class ZerograntEmailInput extends StatefulWidget {
  final TextEditingController? controller;
  final String? placeHolder;

  const ZerograntEmailInput({super.key, this.controller, this.placeHolder});

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
      autovalidateMode: AutovalidateMode.onUnfocus,
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
        labelText: widget.placeHolder ?? translate.inputEmailDefaultHint,
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
