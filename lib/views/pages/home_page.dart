import 'package:app_directorios/views/pages/login_page.dart';
import 'package:app_directorios/views/pages/school_page.dart';
import 'package:app_directorios/views/pages/update_page.dart';
import 'package:flutter/material.dart';
import '../../common/transition_app.dart';
import 'gets_page.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Directorios Escolares Oaxaca"),
        actions: [
          IconButton(
              onPressed: () => closeSession(),
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 18, 50, 19),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Yobany"),
              accountEmail: Text("yobany@gmail.com"),
              decoration: BoxDecoration(color: Colors.green[900]),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 166, 212, 168),
                child: Text(
                  "Y",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            /* Ink(
              color: Colors.green[900],
              child: new ListTile(
                title: Text(
                  "Obtener Todas Las Escuelas",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),*/
            ListTile(
              title: Text(
                "Obtener Todas Las Escuelas",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: Icon(
                Icons.list,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                getsSchool(context);
              },
            ),
            ListTile(
              title: Text(
                "Agregar Escuela",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: Icon(
                Icons.add,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                createSchool(context);
              },
            ),
            ListTile(
                title: Text(
                  "Obtener Escuela",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                leading: Icon(
                  Icons.list,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                }),
            ListTile(
              title: Text(
                "Actualizar Escuela",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: Icon(
                Icons.update,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                updateSchool(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Configuración",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: Icon(
                Icons.manage_accounts,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Bienvenid@s"),
      ),
    );
  }

  closeSession() {}

  createSchool(context) {
    TransitionApp.openPage(SchoolPage(), context);
  }

  updateSchool(context) {
    TransitionApp.openPage(UpdatePage(), context);
  }

  getsSchool(context) {
    TransitionApp.openPage(GetsPage(), context);
  }
}
