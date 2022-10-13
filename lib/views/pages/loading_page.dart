import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        //para que ocupe todo el ancho y alto
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.green.shade900,
            Colors.green.shade900.withOpacity(0.45)
          ],
        )),
        child: Icon(
          Icons.school,
          color: Colors.white,
          size: 150,
        ),
      ),
    ));
  }
}
