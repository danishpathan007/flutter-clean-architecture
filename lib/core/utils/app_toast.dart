import 'package:flutter/material.dart';

class AppToast {
  AppToast._();

  static void showSuccess(BuildContext context, String message) {
    _show(context, message, Colors.green.shade700);
  }

  static void showError(BuildContext context, String message) {
    _show(context, message, Colors.red.shade700);
  }

  static void _show(BuildContext context, String message, Color color) {
    final messenger = ScaffoldMessenger.of(context);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: color,
          behavior: SnackBarBehavior.floating,
        ),
      );
  }
}
