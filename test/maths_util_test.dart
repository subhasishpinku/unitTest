import 'package:firsttest/maths_util.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Maths utils -', () {
    test('check for two number addition', () {
      //Arrange
      var a = 10;
      var b = 10;
      //Act
      var sum = add(a, b);

      //Assert
      expect(sum, 20);
    });

    test('check for two numbers subtraction', () {
      var a = 10;
      var b = 10;

      //Act
      var subs = subtraction(a, b);

      //Assert
      expect(subs, 0);
    });

    test('check for two numbers multiply', () {
      var a = 10;
      var b = 10;

      //Act
      var m = multiply(a, b);

      //Assert
      expect(m, 100);
    });
  });
}
