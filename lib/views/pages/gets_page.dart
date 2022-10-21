import 'package:flutter/material.dart';

class GetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(title: Text("Lista de flutter")),*/
      appBar: AppBar(
        title: Text("Lista De Escuelas"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 18, 50, 19),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Item $index"),
            );
          }),
    );
  }
}
