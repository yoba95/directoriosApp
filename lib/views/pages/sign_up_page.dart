import 'package:app_directorios/common/transition_app.dart';
import 'package:app_directorios/views/Widgets/bar_gradient.dart';
import 'package:app_directorios/views/Widgets/button_base.dart';
import 'package:app_directorios/views/Widgets/text_field_base.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  TextEditingController ctrlUserName = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlFullName = TextEditingController();
  TextEditingController ctrlPhone = TextEditingController();
  TextEditingController ctrlOficina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            BarGradient("Crear Cuenta", Icons.person_add_alt_1_sharp),
            TextFieldBase("Nombre Completo", ctrlFullName),
            TextFieldBase("Telefono", ctrlPhone),
            TextFieldBase("Nombre De La Oficina", ctrlOficina),
            TextFieldBase("Nombre De Usuario", ctrlUserName),
            TextFieldBase("Correo Electronico", ctrlEmail),
            TextFieldBase("Contraseña", ctrlPassword),
            ButtonBase("Crear Cuenta", () => signUp()),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Tienes una cuenta?"),
                  Text(
                    "Iniciar Sesión",
                    style: TextStyle(color: Colors.green[900]),
                  )
                ],
              ),
              onTap: () => TransitionApp.closePageOrDialog(context),
            )
          ],
        ),
      ),
    ));
  }

  signUp() {}
}
