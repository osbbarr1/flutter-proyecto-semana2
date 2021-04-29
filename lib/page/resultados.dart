import 'package:flutter/material.dart';

class ResultadosPage extends StatelessWidget {
  final int sexo;
  final double estatura;
  final int peso;
  final int edad;
  double totalEstatura = 0;
  String message = "";
  String resultado = "";
  String genero = " El genero Masculino";
  Color color = Colors.white;
  double resultadoimc = 0;

  ResultadosPage(
      {required this.sexo,
      required this.estatura,
      required this.peso,
      required this.edad});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: buildIMC(context),
    );
  }

  @override
  Widget buildIMC(BuildContext context) {
    calculaResultadoIMC();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            height: 30,
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
          margin: EdgeInsets.all(10),
          color: Colors.black12,
          child: Expanded(
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.all(15)),
                Text("$resultado",
                    style: TextStyle(
                      color: color,
                      fontSize: 20,
                    )),
                Padding(padding: const EdgeInsets.all(15)),
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.all(20)),
                    Text(
                      "$resultadoimc",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(40)),
                    Text(
                      "$message",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          color: Colors.red,
          height: 60,
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
    );
  }

  calculaResultadoIMC() {
    totalEstatura = (estatura / 100);
    resultadoimc = double.parse(
        (peso / (totalEstatura * totalEstatura)).toStringAsFixed(1));

    if (sexo == 1) {
      genero = " El genero Femenino";
    }

    if (resultadoimc < 18.5) {
      resultado = "Bajo Peso";
      message = genero +
          " tiene un $resultado  $peso Kg, Indice de masa corporal con $resultado ";
      color = Colors.red;
    }

    if (resultadoimc >= 18.5 && resultadoimc <= 24.9) {
      resultado = "Normal";
      message = genero +
          " tiene un peso $resultado  $peso Kg, Indice de masa corporal $resultado ";
      color = Colors.green;
    }

    if (resultadoimc >= 25 && resultadoimc <= 29.9) {
      resultado = "Sobre Peso";
      message = genero +
          " tiene un  $resultado  $peso Kg, Indice de masa corporal con $resultado ";
      color = Colors.orange.shade300;
    }

    if (resultadoimc >= 30 && resultadoimc <= 34.5) {
      resultado = "Obesidad Grado I";
      message = genero +
          " tiene una  $resultado  y  $peso Kg, Indice de masa corporal con $resultado ";
      color = Colors.orange.shade600;
    }

    if (resultadoimc >= 35 && resultadoimc <= 39.9) {
      resultado = "Obesidad Grado II";
      message = genero +
          " tiene una  $resultado  y  $peso Kg, Indice de masa corporal con $resultado ";
      color = Colors.orange.shade700;
    }

    if (resultadoimc >= 40) {
      resultado = "Obesidad Grado III";
      message = genero +
          " tiene una  $resultado  y  $peso Kg, Indice de masa corporal con $resultado ";
      color = Colors.red;
    }
    // resultadoimc = (peso / (estatura * estatura));
    //resultadoIMC.add(Text(
    //  "$resultadoimc",
    //  style: TextStyle(
    //   color: Colors.white,
    //   fontSize: 35,
    //  ),
    //  ));
  }
}
