import 'package:flutter/widgets.dart';

class TransitionApp {
  static closePageOrDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}
