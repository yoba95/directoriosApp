import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldBase extends StatelessWidget {
  String name;
  IconData? icon;
  bool obscureText;
  TextEditingController controller = TextEditingController();
  TextFieldBase(
    this.name,
    this.controller, {
    super.key,
    this.obscureText = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      height: 45,
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            icon: this.icon != null
                ? Icon(this.icon, color: Colors.green[900])
                : null,
            hintText: this.name,
            border: InputBorder.none),
      ),
    );
  }
}
