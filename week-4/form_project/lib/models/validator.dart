class Validator {
  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Name cannot be an empty field";
    }
    return null;
  }

  String? numberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number cannot be blank";
    }

    if (value.length != 11) {
      return "Your phone number should be 11 digits";
    }

    if (!RegExp(r'\d{11}').hasMatch(value)) {
      return "Your phone number must be a number!";
    }

    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Email cannot be blank";
    }

    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return "Enter a valid email address";
    }

    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter a password!";
    }

    if (value.length < 8) {
      return 'Password should be 8 characters or more';
    }

    // if (!RegExp(r'^[\d+|\w+|([^\w\d\s]*)]{8,}$').hasMatch(value)) {
    //   return 'Password should not contain whitespace';
    // }

    return null;
  }
}
