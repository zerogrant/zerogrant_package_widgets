import 'package:flutter/material.dart';
import 'package:zerogrant_package_widgets/constants/zerogrant_constants.dart';
import 'package:zerogrant_package_widgets/l10n/app_localizations.dart';

class ZerograntInput extends StatefulWidget {
  final TextEditingController? controller;
  final String placeHolder;
  final bool isRequired;

  const ZerograntInput({
    super.key,
    this.controller,
    required this.placeHolder,
    this.isRequired = false,
  });

  @override
  State<StatefulWidget> createState() => _ZerograntInputState();
}

class _ZerograntInputState extends State<ZerograntInput> {
  @override
  Widget build(BuildContext context) {
    var translate = AppLocalizations.of(context);

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
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.error, width: 2),
          ),
        ),
        validator: (value) {
          if (widget.isRequired && (value == null || value.isEmpty)) {
            return translate.inputEmpty;
          } else if ((value?.length ?? 0) > InputConstants.maxLength) {
            return translate.inputMaxLength(InputConstants.maxLength);
          }
          return null;
        });
  }
}
