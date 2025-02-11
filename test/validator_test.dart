import 'package:firsttest/validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('validate for empty email id', () {
    //Arrange
    var result = Validator.validateEmail('');

    //Act

    //Assert
    expect(result, "Required Fields");
  });

  test('validate for invalid email id', () {
    //Arrange
    var result = Validator.validateEmail('vdvdv');

    //Act

    //Assert
    expect(result, "Please enter a valid email id");
  });

  test('validate for invalid email id', () {
    //Arrange
    var result = Validator.validateEmail('abc@gmail.com');
    //Act
    //Assert
    expect(result, null);
  });

   test('validate for valid password', () {
    //Arrange
    var result = Validator.validatePassword('');
    //Act
    //Assert
    expect(result, 'Required Fields');
  });
}
