import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid/controllers/principal_controller.dart';
import 'package:covid/views/components/copyright.dart';
import 'package:covid/views/components/espacamento_h.dart';


class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  var _controller = MainController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid No Mundo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.asset(
              'assets/images/covid.png',
              width: 200,
              height: 200,
            ),
            // Deverá substituir o campo abaixo com uma variável de controle:
            EspacamentoH(h: 20),
            Text(_controller.resultMortes),
           // Mortes(mortes: _controller.resultMortes),
            EspacamentoH(h: 20),
            Text(_controller.resultRecuperados),
            //Recuperados(recuperados: _controller.resultRecuperados),
            EspacamentoH(h: 20),
            Text(_controller.resultCasosCovid),
            // CasosCovid(casoscovid: _controller.resultCasosCovid),
            EspacamentoH(h: 20),

            ElevatedButton(
                onPressed: () async {
                  await _controller.buscar();
                  setState(() {});
                },
                child: Text("Dados Covid")),
            EspacamentoH(h: 40),
            Copyright()
          ],
        ),
      ),
    );
  }
}
