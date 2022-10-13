import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Directorios Escolares De Educación Básica"),
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
              accountEmail: Text("prueba@gmail.com"),
              decoration: BoxDecoration(color: Colors.green[900]),
            )
          ],
        ),
      ),
      body: Center(child: Text("BIENVENIDOS")),
    );
  }

  closeSession() {}
}
