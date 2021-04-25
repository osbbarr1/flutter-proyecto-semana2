import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: body(),
    );
  }

  Widget body() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage('assets/male.png'),
                            width: 25,
                          ),
                          Text(
                            "Hombre",
                            style: TextStyle(
                                color: Color.fromARGB(255, 100, 100, 100)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 250,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage('assets/female.png'),
                            width: 29,
                          ),
                          Text(
                            "Mujer",
                            style: TextStyle(
                                color: Color.fromARGB(255, 100, 100, 100)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 540,
              height: 150,
              margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Estatura",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 100, 100, 100)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(this.value.round().toString() + " cm",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                )),
                          ),
                          SliderTheme(
                            data: SliderThemeData(
                                thumbColor: Colors.red,
                                activeTrackColor: Colors.white),
                            child: Column(
                              children: [
                                Slider(
                                  value: value,
                                  min: 1,
                                  max: 500,
                                  inactiveColor: Colors.white,
                                  divisions: 100,
                                  onChanged: (value) =>
                                      setState(() => this.value = value),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Peso",
                            style: TextStyle(
                                color: Color.fromARGB(255, 100, 100, 100)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 250,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Edad",
                            style: TextStyle(
                                color: Color.fromARGB(255, 100, 100, 100)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Container(
          color: Colors.red,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
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
        ),
      ],
    );
  }
}
