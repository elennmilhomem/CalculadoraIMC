
import 'package:calculadora_imc/pages/progresso_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  // List<charts.Series<Task, String>> _seriesPieData;
  // _generateData() {
  //   var pieData = [
  //     new Task('MAGREZA', 18.5, Colors.purple),
  //     new Task('SAUDÁVEL', 25.9, Color(0xFF0fd09e)),
  //     new Task('SOBREPESO', 29.9, Colors.orange),
  //     new Task('OBESIDADE', 29.9, Colors.pink[400]),
  //   ];

  //   // _seriesPieData.add(
  //   //   //DETALHES DO GRÁFICO
  //   //   charts.Series(
  //   //       data: pieData,
  //   //       domainFn: (Task task, _) => task.task,
  //   //       measureFn: (Task task, _) => task.taskvalue,
  //   //       colorFn: (Task task, _) =>
  //   //           charts.ColorUtil.fromDartColor(task.colorval),
  //   //       id: 'Grafico Peso',
  //   //       labelAccessorFn: (Task row, _) => '${row.taskvalue}'),
  //   // );
  // }

  String _infoStatus = "";
  String _infoImc = "";

  void _resetarCampos() {
    pesoController.text = "";
    alturaController.text = "";
    FocusScope.of(context).unfocus();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) => pesoController.clear());
    setState(() {
      _infoStatus = "";
      _infoImc = "";
      // ignore: deprecated_member_use
      // _seriesPieData = List<charts.Series<Task, String>>();
      // _generateData();
    });
  }

  void _calcular() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text) / 100;
      double imc = peso / (altura * altura);
      print(imc);
      if (imc < 18.5) {
        _infoStatus = "Abaixo do peso";
        _infoImc = "${imc.toStringAsPrecision(2)}";
      } else if (imc >= 18.5 && imc < 24.9) {
        _infoStatus = "No peso ideal";
        _infoImc = "${imc.toStringAsPrecision(2)}";
      } else if (imc >= 24.9 && imc < 29.9) {
        _infoStatus = "Levemente acima do peso";
        _infoImc = "${imc.toStringAsPrecision(2)}";
      } else if (imc >= 29.9 && imc < 34.9) {
        _infoStatus = "Com obesidade grau I";
        _infoImc = "${imc.toStringAsPrecision(2)}";
      } else if (imc >= 34.9 && imc <= 39.9) {
        _infoStatus = "Com obesidade grau II";
        _infoImc = "${imc.toStringAsPrecision(2)}";
      } else if (imc >= 40) {
        _infoStatus = "Com obesidade grau III";
        _infoImc = "${imc.toStringAsPrecision(2)}";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProgressoPage(),
              ),
            );
          },
          icon: Icon(
            Icons.show_chart,
            color: Color(0xFF0fd09e),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "CALCULADORA IMC",
          style: TextStyle(
            color: Color(0xFF0fd09e),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Color(0xFF0fd09e),
            ),
            onPressed: _resetarCampos,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              // ROW DO CAMPO DE PESO
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Peso",
                    style: TextStyle(
                      color: Color(0xFF0fd09e),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      child: TextField(
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Kg",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF0fd09e),
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              // style: BorderStyle.none,
                            ),
                          ),
                        ),
                        controller: pesoController,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              //ROW DO CAMPO DE ALTURA
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Altura",
                    style: TextStyle(
                        color: Color(0xFF0fd09e), fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    height: 40,
                    width: 200,
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      //para alterar a cor da sombra
                      //shadowColor: ,
                      child: TextField(
                        
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "M",
                          hintStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF0fd09e),
                              fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              // style: BorderStyle.none,
                            ),
                          ),
                        ),
                        controller: alturaController,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              // BOTÃO CALCULAR
              Container(
                height: 30.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: _calcular,
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      color: Color(0xFF0fd09e),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text(
                "VOCÊ ESTÁ",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              Padding(
                padding: EdgeInsets.all(25),
              ),
              Text(
                _infoStatus,
                style: TextStyle(color: Color(0xFF0fd09e), fontSize: 35),
              ),
              Padding(
                padding: EdgeInsets.all(25),
              ),
              Text(
                "O SEU IMC ATUAL É",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              Padding(
                padding: EdgeInsets.all(25),
              ),
              Text(
                " $_infoImc kg/m²",
                style: TextStyle(
                    color: Color(0xFF0fd09e),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              // Expanded(
              //   child: charts.PieChart(
              //     _seriesPieData,
              //     animate: true,
              //     animationDuration: Duration(seconds: 5),
              //     behaviors: [
              //       new charts.DatumLegend(
              //         outsideJustification:
              //             charts.OutsideJustification.endDrawArea,
              //         horizontalFirst: false,
              //         desiredMaxColumns: 2,
              //         cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
              //         entryTextStyle: charts.TextStyleSpec(
              //           color: charts.MaterialPalette.purple.shadeDefault,
              //           fontFamily: 'Georgia',
              //           fontSize: 11,
              //         ),
              //       ),
              //     ],
              //     defaultRenderer: new charts.ArcRendererConfig(
              //       arcWidth: 50,
              //       arcRendererDecorators: [
              //         new charts.ArcLabelDecorator(
              //             labelPosition: charts.ArcLabelPosition.inside),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Task {
//   String task;
//   double taskvalue;
//   Color colorval;

//   Task(this.task, this.taskvalue, this.colorval);
// }
