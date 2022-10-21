import 'package:flutter/material.dart';

import '../Widgets/bar_gradient.dart';
import '../Widgets/button_base.dart';
import '../Widgets/text_field_base.dart';

class SchoolPage extends StatelessWidget {
  TextEditingController ctrlNameSchool = TextEditingController();
  TextEditingController ctrlCtt = TextEditingController();
  TextEditingController ctrlNivel = TextEditingController();
  TextEditingController ctrlCalle = TextEditingController();
  TextEditingController ctrlNoExt = TextEditingController();
  TextEditingController ctrlNoInt = TextEditingController();
  TextEditingController ctrlAsentamiento = TextEditingController();
  TextEditingController ctrlEmailSchool = TextEditingController();
  TextEditingController ctrlTelefonoSchool = TextEditingController();
  TextEditingController ctrlNameDirector = TextEditingController();
  TextEditingController ctrlSindicato = TextEditingController();
  TextEditingController ctrlTelefonoDir = TextEditingController();
  TextEditingController ctrlPuesto = TextEditingController();
  TextEditingController ctrlEmailDir = TextEditingController();
  TextEditingController ctrlAtencion = TextEditingController();
  TextEditingController ctrlNameSupervisor = TextEditingController();
  TextEditingController ctrlTelefonoSup = TextEditingController();
  TextEditingController ctrlEmailSup = TextEditingController();
  TextEditingController ctrlRecuperado = TextEditingController();
  TextEditingController ctrlDirectorioRecuperado = TextEditingController();
//localidad desplegar
  TextEditingController ctrlLocalidad = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Directorios Escolares"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 18, 50, 19),
        ),
        //body: Center(child: Text("BIENVENIDOS")),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
            BarGradient("Agregar Escuela", Icons.add_box),
            TextFieldBase("Nombre De La Escuela", ctrlNameSchool),
            TextFieldBase("Clave Del Centro De Trabajo", ctrlCtt),
            TextFieldBase("Nivel Educativo", ctrlNivel),
            TextFieldBase("Nombre De La Calle", ctrlCalle),
            TextFieldBase("Numero Exterior", ctrlNoExt),
            TextFieldBase("Colonia o Asentamiento", ctrlAsentamiento),
            TextFieldBase("Correo Electronico De La Escuela", ctrlEmailSchool),
            TextFieldBase(
                "Numero De Telefono De La Escuela", ctrlTelefonoSchool),
            TextFieldBase("Nombre Del Director", ctrlNameDirector),
            TextFieldBase("Sindicato", ctrlSindicato),
            TextFieldBase("Telefono", ctrlTelefonoDir),
            TextFieldBase("Puesto", ctrlPuesto),
            TextFieldBase("Correo Electronico Del Director", ctrlEmailDir),
            TextFieldBase("Esta Programada Su Ateción", ctrlAtencion),
            TextFieldBase("Nombre Del Supervisor", ctrlNameSupervisor),
            TextFieldBase("Telefono", ctrlTelefonoSup),
            TextFieldBase("Correo Electronico Del Supervisor", ctrlEmailSup),
            TextFieldBase("Via De Recuperacion Del Contacto", ctrlRecuperado),
            TextFieldBase(
                "Fecha Del Contacto Recuperado", ctrlDirectorioRecuperado),
            TextFieldBase("Seleccione Localidad", ctrlLocalidad),
            ButtonBase("Crear Escuela", () => createSchool()),
          ])),
        ));
  }

  createSchool() {}
}
