import 'package:flutter/material.dart';

class SnackBarApp extends SnackBar {
  Widget? widget;
  SnackBarApp(this.widget)
      : super(
            backgroundColor: Colors.green,
            content: widget!,
            duration: const Duration(seconds: 6));
}
