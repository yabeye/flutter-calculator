import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/button_row.dart';
import 'package:flutter_calculator/logic/button_info.dart';

// ignore: must_be_immutable
class InputArea extends StatelessWidget {
  Function onPress;
  InputArea({Key? key, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(buttonNames.length);
    //this.onPress("12");
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < buttonNames.length; i++)
          ButtonRow(
            buttonRowNames: buttonNames[i],
            onPress: onPress,
          ),
      ],
    );
  }
}
