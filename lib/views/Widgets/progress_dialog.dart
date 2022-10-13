import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: SimpleDialog(
          children: [
            Center(
              child: Column(
                children: [
                  CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.green.shade900),
                  ),
                  Text(
                    "Por favor espere ....",
                    style: TextStyle(color: Colors.green[900]),
                  )
                ],
              ),
            )
          ],
        ),
        onWillPop: () async => false);
  }
}
