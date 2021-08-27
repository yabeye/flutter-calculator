import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/input_area.dart';
import 'package:flutter_calculator/logic/operations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Result data //
  String inputString = "0";
  String resultString = "0";

  processResult() {
    this.setState(() {
      final op = new Operation();
      String result = op.processResult(inputString).toString();

      //if (result.length > 14) result = result.substring(0, 14);
      if (result.length > 14)
        result = double.parse(result.toString()).toStringAsFixed(8).toString();
      resultString = inputString;
      inputString = result;
    });
  }

  setInputString(value) {
    if (value == "+" || value == "-" || value == "x" || value == "/") {
      if (inputString.contains("+") ||
          inputString.contains("-") ||
          inputString.contains("x") ||
          inputString.contains("/")) {
        processResult();
        this.setState(() {
          inputString += value;
        });
        return;
      }
    }

    if (value == "=") {
      if (inputString.length < 3) return;
      processResult();
      return;
    }
    if (value == "DEL") {
      if (inputString == "" || inputString == "0") return;
      this.setState(() {
        inputString = inputString.substring(0, inputString.length - 1) + "";
      });

      return;
    }
    if (value == "C") {
      this.setState(() {
        resultString = "0";
        inputString = "0";
      });

      return;
    }
    if (value == "+/-") {
      try {
        this.setState(() {
          double temp = (double.parse(inputString) * -1);
          inputString = temp.toString();
          if (temp.toInt() == temp) inputString = temp.toInt().toString();
        });
      } catch (e) {}

      return;
    }

    if (value == "%") {
      this.setState(() {
        inputString =
            (double.parse(inputString) * 0.01).toStringAsFixed(3).toString();
      });

      return;
    }

    if (inputString == "0") inputString = "";

    this.setState(() {
      if (value == "." && inputString.contains(".")) return;
      inputString = inputString + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    //setInputString("3");
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu), // for further dev'pt
          ),
          leadingWidth: 40.0,
          elevation: 0.0,
          title: Text(
            "Flutter Calculator",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 28),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert), // calc history
            )
          ],
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deg",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    resultString,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        inputString.length > 14
                            ? inputString.substring(
                                inputString.length - 14, inputString.length)
                            : inputString,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                InputArea(
                  onPress: setInputString,
                ),
              ],
            ),
          ],
        ));
  }
}
