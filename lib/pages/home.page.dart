import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.page.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homePageState();
}

class _homePageState extends State<homepage> {
  int peso = 0;
  int edad = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculo IMC"),
        ),
        body: Column(
          children: [
            Expanded(
                //primer cuadricula
                flex: 3,
                child: Container(
                  color: Color.fromARGB(255, 51, 50, 50),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.man,
                                size: 100,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.woman,
                                size: 100,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
            Expanded(
                //2 cuadricula
                flex: 3,
                child: Container(
                  color: Color.fromARGB(255, 51, 50, 50),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
            Expanded(
                //3 cuadricula
                flex: 3,
                child: Container(
                  color: Color.fromARGB(255, 51, 50, 50),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Peso"),
                              Text(
                                peso.toString(),
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              //Text("62")
                              Row(
                                children: [
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle)),
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_circle)),
                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Edad"),
                              Text("62"),
                              Row(
                                children: [
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle)),
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_circle)),
                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => DetallePage())));
              },
              child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("calcular",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                  )),
            ),
          ],
        ));
  }
}
