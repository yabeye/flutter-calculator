import 'package:flutter/material.dart';
import 'package:flutter_calculator/logic/button_info.dart';

// ignore: must_be_immutable
class ButtonContainer extends StatelessWidget {
  final ButtonInfo btnInfo;
  Function onPress;
  ButtonContainer({Key? key, required this.btnInfo, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        onPress(btnInfo.text);
      },
      splashColor: Colors.grey,
      child: Container(
        width: size.width / 4,
        height: size.width / 4,
        //color: Colors.orange,
        decoration: BoxDecoration(
            color: btnInfo.buttonType != 2 ? Colors.white60 : Colors.orange,
            border: Border.all(
              color: Colors.black26,
              width: 0.3,
            )),
        child: Text(
          btnInfo.text,
          style: TextStyle(
              color: btnInfo.buttonType == 0
                  ? Colors.black38
                  : btnInfo.buttonType == 2
                      ? Colors.white
                      : Colors.orange,
              fontSize: 30),
        ),
        alignment: Alignment(0, 0),
      ),
    );
  }
}
