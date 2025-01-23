import 'package:flutter/material.dart';

void zerograntBottomModal({
  required BuildContext context,
  required Widget content,
  double radius = 50,
  EdgeInsets padding = const EdgeInsets.all(16),
  double? height,
  bool showBackdrop = true,
}) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    useRootNavigator: false,
    barrierColor: showBackdrop == false ? Colors.transparent : null,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius))),
    builder: (BuildContext context) {
      var screenHeight = MediaQuery.of(context).size.height;
      var fixedHeight = height != null
          ? height > screenHeight
              ? screenHeight - 20
              : height
          : null;
      return Container(
          height: fixedHeight,
          padding: padding,
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom, // Context2 here
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  topRight: Radius.circular(radius))),
          child: SingleChildScrollView(
            child: content,
          ));
    },
  );
}
