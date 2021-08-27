class Operation {
  processResult(input) {
    List<String> numbers = [];
    double result = 0.0;
    try {
      if (input.toString().contains("+")) {
        numbers = input.toString().split("+");
        result = double.parse(numbers[0]) + double.parse(numbers[1]);
      } else if (input.toString().contains("-")) {
        numbers = input.toString().split("-");
        result = double.parse(numbers[0]) - double.parse(numbers[1]);
      } else if (input.toString().contains("x")) {
        numbers = input.toString().split("x");
        result = double.parse(numbers[0]) * double.parse(numbers[1]);
      } else if (input.toString().contains("/")) {
        numbers = input.toString().split("/");
        if (numbers[1] == '0') return "Can't divide!";
        result = double.parse(numbers[0]) / double.parse(numbers[1]);
      } else {
        numbers = [];
      }
    } catch (e) {
      //print("problem is-> $e and currentInput is $numbers");
      // bug to fix , we canot perform operation on negetive numbers //
      return "Invalid!";
    }

    if (result.toInt() == result) return result.toInt();

    return result;
  }
}
