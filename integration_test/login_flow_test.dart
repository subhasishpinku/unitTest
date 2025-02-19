import 'package:firsttest/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main(List<String> args) {
  group("Login Flow Test", () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets(
        "Should Required Fields error message when user taps on login button without entering valid email id & password",
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreen(),
      ));
      //ACT

      Finder loginButton = find.byType(ElevatedButton);
      await tester.tap(loginButton);
      await tester.pumpAndSettle(const Duration(seconds: 2));

      Finder errorText = find.text("Required Fields");
      expect(errorText, findsNWidgets(2));
    });
    testWidgets(
        "Should show home screen when user taps on login button after entering valid email id & password",
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreen(),
      ));
      //ACT
      Finder userNameTextField = find.byKey(const ValueKey("email_id"));
      Finder passwordTextField = find.byKey(const ValueKey("password"));
      await tester.enterText(userNameTextField, "pinku.subhasish@gmail.com");
      await tester.enterText(passwordTextField, "password");

      Finder loginButton = find.byType(ElevatedButton);
      await tester.tap(loginButton);
      await tester.pumpAndSettle(const Duration(seconds: 2));

      Finder welcomeText = find.byType(Text);
      expect(welcomeText, findsOneWidget);
    });
  });
}
