import 'package:exemplo_menu_login/Utils/CadastrarDetalhe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Cadastro extends StatefulWidget {
  @override
  _DetalheState createState() => _DetalheState();
}

class _DetalheState extends State<Cadastro> {
  final nomeControll = TextEditingController();
  final emailControll = TextEditingController();
  final cargoControll = TextEditingController();
  final detalheControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Cadastrar",
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Nome e sobrenome',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                    controller: nomeControll,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                    backgroundImage:
                        ExactAssetImage('assets/images/ImgTeste.jpg')),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              controller: emailControll,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Cargo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
              controller: cargoControll,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Mais detalhe',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
              controller: detalheControll,
            ),
            SizedBox(
              height: 40,
            ),
            OutlineButton(
              color: Colors.blue,
              disabledTextColor: Colors.black,
              onPressed: () {
                CadastrarDetalhe cadastro = new CadastrarDetalhe(
                    nome: nomeControll.text,
                    email: emailControll.text,
                    cargo: cargoControll.text,
                    detalhe: detalheControll.text);

                //   Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => Detalhe(cadastro),
                //           settings: RouteSettings(arguments: cadastro)));
                //
              },
              child: Text(
                "Realizar Cadastro",
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
