import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _controller = TextEditingController();
  String strOutput = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Midterm Exam'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Temperature Converter',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          TextField(
                            textAlign: TextAlign.start,
                            controller: _controller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Enter a temperature value to convert',
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Text('Celsius to Fahrenheit'),
                                onPressed: () {
                                  var input = int.tryParse(_controller.text);
                                  double ans = 0;

                                  if (input == null) {
                                    strOutput = "Input Error !!!";
                                  } else {
                                    ans = ((9 / 5) * input) + 32;
                                    strOutput =
                                    "${input} Celsius = ${ans} Fahrenheit";
                                  }
                                  print(strOutput);
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              ElevatedButton(
                                child: Text('Celsius to Kelvin'),
                                onPressed: () {
                                  var input = int.tryParse(_controller.text);
                                  double ans = 0;

                                  if (input == null) {
                                    strOutput = "Input Error !!!";
                                  } else {
                                    ans = input + 273;
                                    strOutput =
                                    "${input} Celsius = ${ans} Kelvin";
                                  }
                                  print(strOutput);
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Text('Fahrenheit to Celsius'),
                                onPressed: () {
                                  var input = int.tryParse(_controller.text);
                                  double ans = 0;

                                  if (input == null) {
                                    strOutput = "Input Error !!!";
                                  } else {
                                    ans = (5 / 9) * (input - 32);
                                    strOutput =
                                    "${input} Fahrenheit = ${ans} Celsius";
                                  }
                                  print(strOutput);
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              ElevatedButton(
                                child: Text('Fahrenheit to Kelvin'),
                                onPressed: () {
                                  var input = int.tryParse(_controller.text);
                                  double ans = 0;

                                  if (input == null) {
                                    strOutput = "Input Error !!!";
                                  } else {
                                    ans = ((5 / 9) * (input - 32)) + 273;
                                    strOutput =
                                    "${input} Fahrenheit = ${ans} Kelvin";
                                  }
                                  print(strOutput);
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Text('Kelvin to Celsius'),
                                onPressed: () {
                                  var input = int.tryParse(_controller.text);
                                  double ans = 0;

                                  if (input == null) {
                                    strOutput = "Input Error !!!";
                                  } else {
                                    ans = input - 273;
                                    strOutput =
                                    "${input} Kelvin = ${ans} Celsius";
                                  }
                                  print(strOutput);
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              ElevatedButton(
                                child: Text('Kelvin to Fahrenheit'),
                                onPressed: () {
                                  var input = int.tryParse(_controller.text);
                                  double ans = 0;

                                  if (input == null) {
                                    strOutput = "Input Error !!!";
                                  } else {
                                    ans = ((9 / 5) * (input - 273)) + 32;
                                    strOutput =
                                    "${input} Kelvin = ${ans} Fahrenheit";
                                  }
                                  print(strOutput);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    strOutput,
                    style:
                    TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}