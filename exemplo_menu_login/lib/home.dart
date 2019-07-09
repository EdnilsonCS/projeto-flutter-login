
import 'package:exemplo_menu_login/Utils/Login.dart';
import 'package:exemplo_menu_login/main.dart';
import 'package:flutter/material.dart';

class Detalhe extends StatefulWidget {
  Login cadastro;
  Detalhe(this.cadastro);
  @override
  _DetalheState createState() => _DetalheState(cadastro);
}

class _DetalheState extends State<Detalhe> {
  Login cadastro;
  _DetalheState(this.cadastro);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'My UFs',
                style: TextStyle(fontSize: 40, color: Colors.grey),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Início'),
              leading: Icon(
                Icons.home,
                color: Colors.grey,
                size: 30.0,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Lista de Funcionarios'),
              leading: Icon(
                Icons.list,
                color: Colors.grey,
                size: 30.0,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Realizar Cadastro'),
              leading: Icon(
                Icons.playlist_add,
                color: Colors.grey,
                size: 30.0,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Sair'),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
                size: 30.0,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Detalhes"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: ExactAssetImage('assets/images/ImgTeste.jpg'),
              radius: 100,
            ),
            Text(
              "Seja Bem Vindo, ${cadastro.email}",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            OutlineButton(
              color: Colors.blue,
              // textColor: Colors.white,
              disabledTextColor: Colors.black,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
                //Navigator.push(
                //    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: Text(
                "Sair",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
