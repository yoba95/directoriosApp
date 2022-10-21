import 'package:app_directorios/common/transition_app.dart';
import 'package:app_directorios/views/Widgets/bar_gradient.dart';
import 'package:app_directorios/views/Widgets/button_base.dart';
import 'package:app_directorios/views/Widgets/progress_dialog.dart';
import 'package:app_directorios/views/Widgets/reset_password.dart';
import 'package:app_directorios/views/Widgets/snack_bar_app.dart';
import 'package:app_directorios/views/Widgets/text_field_base.dart';
import 'package:app_directorios/views/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

import '../Widgets/text_message.dart';
import 'home_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        BarGradient("Directorios Escolares De Educación Básica", Icons.school),
        /* Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "LOGIN",
          ),
        ),*/
        TextFieldBase(
          "Correo Electronico",
          ctrlEmail,
          icon: Icons.person,
        ),
        TextFieldBase(
          "Contraseña",
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
                  style: TextStyle(color: Colors.grey[900]),
                ),
              )),
          onTap: () => {resetPassword(context)},
        ),
        ButtonBase("Iniciar Sesion", () => {login(context)}),
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("¿No tienes una cuenta?"),
              Text(
                "Crear Cuenta",
                style: TextStyle(color: Colors.green[900]),
              )
            ],
          ),
          onTap: () => {signUp(context)},
        )
      ]),
    ));
  }

  login(BuildContext context) {
    //ScaffoldMessenger.of(context).showSnackBar(SnackBarApp(
    //  TextMessage("Email o contraseña incorrecta. Intente de nuevo")));
    //showProgress(context);
    TransitionApp.openPage(HomePage(), context);
    //TransitionApp.openPage(LoginPage(), context);
  }

  Future<void> showProgress(context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return ProgressDialog();
        });
  }

  signUp(context) {
    TransitionApp.openPage(SignUpPage(), context);
  }

  Future<void> resetPassword(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return ResetPassword();
        });
  }
}
