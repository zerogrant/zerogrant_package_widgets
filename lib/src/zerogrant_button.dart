import 'package:flutter/material.dart';
import 'package:zerogrant_package_widgets/constants/zerogrant_constants.dart';

class ZerograntButton extends StatefulWidget {
  final String text;
  final Function() onPress;
  final bool loading;
  final bool isBig;
  final bool secondary;
  final bool alternative;

  const ZerograntButton({
    super.key,
    required this.text,
    required this.onPress,
    this.loading = false,
    this.isBig = false,
    this.secondary = false,
    this.alternative = false,
  });

  @override
  State<StatefulWidget> createState() => _ZerograntPrimaryButtonState();
}

class _ZerograntPrimaryButtonState extends State<ZerograntButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.isBig) {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        height: 60,
        child: button(fontSize: 18, radius: InputConstants.radiusBig),
      );
    } else {
      return button(fontSize: 14, radius: InputConstants.radius);
    }
  }

  Widget button({required double fontSize, required double radius}) {
    return ElevatedButton(
        onPressed: widget.loading == true
            ? null
            : () {
                widget.onPress();
              },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          backgroundColor: widget.secondary
              ? Theme.of(context).colorScheme.secondary
              : widget.alternative
                  ? Theme.of(context).primaryColor.withAlpha(125)
                  : Theme.of(context).primaryColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
                visible: widget.loading == true,
                child: Container(
                  width: 16,
                  height: 16,
                  margin: const EdgeInsets.only(right: 10),
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.secondary,
                    strokeWidth: 3,
                  ),
                )),
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: fontSize,
                  color: widget.secondary
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary),
            )
          ],
        ));
  }
}
