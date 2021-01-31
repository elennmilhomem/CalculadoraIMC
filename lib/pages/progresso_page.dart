import 'package:flutter/material.dart';

class ProgressoPage extends StatefulWidget {
  @override
  _ProgressoPageState createState() => _ProgressoPageState();
}

class _ProgressoPageState extends State<ProgressoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "MINHAS INFORMAÇÕES",
            style: TextStyle(
              color: Color(0xFF0fd09e),
            ),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.edit_outlined,
                color: Color(0xFF0fd09e),
              ),
              onPressed: () {}),
        ],
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.home_outlined,
            color: Color(0xFF0fd09e),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "ATUAL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFc7c7c7),
                    ),
                  ),
                  Text(
                    "55 Kg",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0fd09e),
                        fontSize: 20.0),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "OBJETIVO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFc7c7c7),
                    ),
                  ),
                  Text(
                    "60 Kg",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0fd09e),
                        fontSize: 20.0),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "FALTA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFc7c7c7),
                    ),
                  ),
                  Text(
                    "+ 4.5 Kg",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0fd09e),
                        fontSize: 20.0),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.fitness_center,
                        color: Color(0xFFf88a94),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "MEU PROGRESSO",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0fd09e),
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share_outlined,
                        color: Color(0xFFc7c7c7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(10, 10),
                  topRight: Radius.elliptical(10, 10),
                  bottomLeft: Radius.elliptical(10, 10),
                  bottomRight: Radius.elliptical(10, 10),
                ),
                boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(2, 2),
              ),
            ],
              ),
              child: Table(
                // defaultColumnWidth: FixedColumnWidth(20.0),
                border: TableBorder.all(style: BorderStyle.none),
                children: [
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('21/01/2021', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('IMC 25.5 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('55.0 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text(
                              '-5 Kg',
                              style: TextStyle(
                                  color: Color(0xFF0fd09e),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('11/01/2021', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('IMC 25.8 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('60.0 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text(
                              '+5 Kg',
                              style: TextStyle(
                                  color: Color(0xFFf88a94),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('11/01/2021', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('IMC 25.8 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('60.0 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text(
                              '+5 Kg',
                              style: TextStyle(
                                  color: Color(0xFFf88a94),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('21/01/2021', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('IMC 25.5 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('55.0 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text(
                              '-5 Kg',
                              style: TextStyle(
                                  color: Color(0xFF0fd09e),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('11/01/2021', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('IMC 25.8 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('60.0 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text(
                              '+5 Kg',
                              style: TextStyle(
                                  color: Color(0xFFf88a94),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('21/01/2021', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('IMC 25.5 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('55.0 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text(
                              '-5 Kg',
                              style: TextStyle(
                                  color: Color(0xFF0fd09e),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('11/01/2021', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('IMC 25.8 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text('60.0 Kg', style: TextStyle(color: Color(0xFF9b9b9b), fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: Center(
                            child: Text(
                              '+5 Kg',
                              style: TextStyle(
                                  color: Color(0xFFf88a94),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
