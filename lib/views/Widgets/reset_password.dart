import 'package:app_directorios/common/transition_app.dart';
import 'package:app_directorios/views/Widgets/button_base.dart';
import 'package:app_directorios/views/Widgets/text_field_base.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  TextEditingController ctrEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFieldBase("correo", ctrEmail),
            Row(
              children: [
                ButtonBase("Cancelar", () => close(context)),
                ButtonBase("Restablecer", () => reset)
              ],
            )
          ],
        ),
      ),
    );
  }

  close(BuildContext context) {
    TransitionApp.closePageOrDialog(context);
  }

  reset() {}
}
