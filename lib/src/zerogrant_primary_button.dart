import 'package:flutter/material.dart';
import 'package:zerogrant_package_widgets/constants/zerogrant_constants.dart';

class ZerograntPrimaryButton extends StatefulWidget {
  final String text;
  final Function() onPress;
  final bool? loading;

  const ZerograntPrimaryButton(
      {super.key, required this.text, required this.onPress, this.loading});

  @override
  State<StatefulWidget> createState() => _ZerograntPrimaryButtonState();
}

class _ZerograntPrimaryButtonState extends State<ZerograntPrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.loading == true
            ? null
            : () {
                widget.onPress();
              },
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(InputConstants.radius),
        ))),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
                visible: widget.loading ?? false,
                child: Container(
                  width: 16,
                  height: 16,
                  margin: const EdgeInsets.only(right: 10),
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.secondary,
                    strokeWidth: 3,
                  ),
                )),
            Text(widget.text)
          ],
        ));
  }
}
