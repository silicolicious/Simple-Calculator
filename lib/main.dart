import 'package:calculator/buttons_calc.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

const kFirstRowColor = Color(0xFFDA0037);
const kLastColumnColor = Color(0xFF444449);
const kNumberColor = Color(0xFFEDEDED);
const kAppBarColor = Color(0xFF444444);
const kEqualColor = Colors.green;
const kOutputColor = Color(0xFF171717);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String userInput = '';
  String answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        backgroundColor: kAppBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Output Area
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(
                        userInput,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.centerRight,
                    ),
                    Container(
                      child: Text(
                        answer,
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
                color: kOutputColor,
              ),
            ),

            //First Row
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: kFirstRowColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput = '';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: 'C',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kFirstRowColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        },
                        textColor: Colors.black,
                        buttonText: 'DEL',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kLastColumnColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            if (userInput == '' ||
                                isOperator(userInput[userInput.length - 1]))
                              userInput += '';
                            else
                              userInput += '%';
                          });
                        },
                        textColor: Colors.white,
                        buttonText: '%',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kLastColumnColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            if (userInput == '' ||
                                isOperator(userInput[userInput.length - 1]))
                              userInput += '';
                            else
                              userInput += '/';
                          });
                        },
                        textColor: Colors.white,
                        buttonText: '/',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.black,
              ),
            ),

            //Second Row
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '7';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '7',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '8';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '8',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '9';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '9',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kLastColumnColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            if (userInput == '' ||
                                isOperator(userInput[userInput.length - 1]))
                              userInput += '';
                            else
                              userInput += 'x';
                          });
                        },
                        textColor: Colors.white,
                        buttonText: 'x',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.black,
              ),
            ),

            //Third Row
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '4';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '4',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '5';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '5',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '6';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '6',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kLastColumnColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '-';
                          });
                        },
                        textColor: Colors.white,
                        buttonText: '-',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.black,
              ),
            ),

            //Fourth Row
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '1';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '1',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '2';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '2',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '3';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '3',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kLastColumnColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '+';
                          });
                        },
                        textColor: Colors.white,
                        buttonText: '+',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.black,
              ),
            ),

            //Fifth Row
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '00';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '00',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '0';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '0',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kNumberColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            userInput += '.';
                          });
                        },
                        textColor: Colors.black,
                        buttonText: '.',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: kEqualColor,
                      child: ButtonCalc(
                        onTap: () {
                          setState(() {
                            calculations();
                          });
                        },
                        textColor: Colors.white,
                        buttonText: '=',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isOperator(String operator) {
    if (operator == '/' ||
        operator == 'x' ||
        operator == '-' ||
        operator == '+' ||
        operator == '=') return true;
    return false;
  }

  void calculations() {
    String inputs = userInput.replaceAll('x', '*');
    Parser temp = Parser();
    Expression expr = temp.parse(inputs);
    ContextModel cm = ContextModel();
    double eval = expr.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
