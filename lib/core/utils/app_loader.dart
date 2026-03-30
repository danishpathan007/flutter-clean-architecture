import 'package:flutter/material.dart';

/// Global full-screen loading overlay.
class AppLoader {
  AppLoader._();

  static OverlayEntry? _entry;

  static void show(BuildContext context) {
    if (_entry != null) return;

    _entry = OverlayEntry(
      builder: (_) => Material(
        color: Colors.black38,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );

    Overlay.of(context, rootOverlay: true).insert(_entry!);
  }

  static void hide() {
    _entry?.remove();
    _entry = null;
  }
}
