// Exercise 1

class Password {
  final String value;

  const Password({required this.value});

  // checks if password length is greater than 8
  bool isValid() => value.length > 8;

  //prints the password value to the console
  @override
  String toString() {
    return value;
  }
}

// test
void main() {
  var myPassword = Password(value: "abcdedghs");
  print(myPassword);

  // is my password valid?
  print(myPassword.isValid());
}
