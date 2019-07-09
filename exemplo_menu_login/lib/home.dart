
import 'package:exemplo_menu_login/Utils/Cadastro.dart';
import 'package:exemplo_menu_login/main.dart';
import 'package:flutter/material.dart';

class Detalhe extends StatefulWidget {
  Cadastrar cadastro;
  Detalhe(this.cadastro);
  @override
  _DetalheState createState() => _DetalheState(cadastro);
}

class _DetalheState extends State<Detalhe> {
  Cadastrar cadastro;
  _DetalheState(this.cadastro);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
             CircleAvatar( backgroundImage: ExactAssetImage('assets/images/ImgTeste.jpg'),
             ),
            
            Text(
              "Usuario: ${cadastro.email}",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            
            ExpansionTile(
              title: Text('Mais Detalhes:'),
              children: <Widget>[
                Text(
                  "" + cadastro.email,
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )
              ],
            ), 
         
            OutlineButton(
              color: Colors.blue,
              // textColor: Colors.white,
              disabledTextColor: Colors.black,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));
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
