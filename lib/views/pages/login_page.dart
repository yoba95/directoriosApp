import 'package:app_directorios/views/Widgets/bar_gradient.dart';
import 'package:app_directorios/views/Widgets/button_base.dart';
import 'package:app_directorios/views/Widgets/reset_password.dart';
import 'package:app_directorios/views/Widgets/text_field_base.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        BarGradient("Directorios Escolares De Educación Básica", Icons.school),
        TextFieldBase(
          "Email",
          ctrlEmail,
          icon: Icons.person,
        ),
        TextFieldBase(
          "Password",
          ctrlPassword,
          icon: Icons.remove_red_eye,
          obscureText: true,
        ),
        InkWell(
          child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 32, top: 16),
                child: Text(
                  "¿Se te olvido la contraseña?",
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          onTap: () => {resetPassword(context)},
        ),
        ButtonBase("Iniciar Sesion", () => {login()}),
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("¿No tienes una cuenta?"),
              Text(
                "Crear Cuenta",
                style: TextStyle(color: Colors.green[400]),
              )
            ],
          ),
          onTap: () => {signUp()},
        )
      ]),
    ));
  }

  login() {}

  signUp() {}

  Future<void> resetPassword(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return ResetPassword();
        });
  }
}
