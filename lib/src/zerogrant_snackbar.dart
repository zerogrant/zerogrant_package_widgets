import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:flutter/material.dart';

void zerograntSnackbar({required BuildContext context, required String text}) {
  DelightToastBar(
    autoDismiss: true,
    builder: (context) => ToastCard(
      shadowColor: Theme.of(context).colorScheme.primary,
      leading: Icon(
        Icons.info,
        size: 28,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  ).show(context);
}
