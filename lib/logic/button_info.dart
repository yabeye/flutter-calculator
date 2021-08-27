class ButtonInfo {
  final text;
  final buttonType;

  ButtonInfo({required this.text, required this.buttonType});
}

final buttonNames = [
  [
    ButtonInfo(text: "C", buttonType: 0),
    ButtonInfo(text: "+/-", buttonType: 0),
    ButtonInfo(text: "%", buttonType: 0),
    ButtonInfo(text: "DEL", buttonType: 0),
  ],
  [
    ButtonInfo(text: "7", buttonType: 0),
    ButtonInfo(text: "8", buttonType: 0),
    ButtonInfo(text: "9", buttonType: 0),
    ButtonInfo(text: "/", buttonType: 1),
  ],
  [
    ButtonInfo(text: "4", buttonType: 0),
    ButtonInfo(text: "5", buttonType: 0),
    ButtonInfo(text: "6", buttonType: 0),
    ButtonInfo(text: "x", buttonType: 1),
  ],
  [
    ButtonInfo(text: "1", buttonType: 0),
    ButtonInfo(text: "2", buttonType: 0),
    ButtonInfo(text: "3", buttonType: 0),
    ButtonInfo(text: "-", buttonType: 1),
  ],
  [
    ButtonInfo(text: "0", buttonType: 0),
    ButtonInfo(text: ".", buttonType: 0),
    ButtonInfo(text: "=", buttonType: 2),
    ButtonInfo(text: "+", buttonType: 1),
  ],
];
