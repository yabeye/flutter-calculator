import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/button.dart';

// ignore: must_be_immutable
class ButtonRow extends StatelessWidget {
  final buttonRowNames;
  Function onPress;
  ButtonRow({Key? key, required this.buttonRowNames, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < 4; i++)
          ButtonContainer(
            btnInfo: buttonRowNames[i],
            onPress: onPress,
          ),
      ],
    );
  }
}
