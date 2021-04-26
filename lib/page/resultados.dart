import 'package:flutter/material.dart';

class ResultadosPage extends StatelessWidget {
  final List<Text> listadoResultados;

  ResultadosPage({required this.listadoResultados});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado de las operaciones"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Resultado",
                style: TextStyle(fontSize: 35),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            height: 350,
            width: 550,
            margin: EdgeInsets.all(10),
            color: Colors.black12,
            child: Expanded(
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.all(15)),
                  Text("Normal", style: TextStyle(color: Colors.green)),
                  Padding(padding: const EdgeInsets.all(15)),
                  Column(
                    children: listadoResultados,
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Calcular",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 255, 0, 100))),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
