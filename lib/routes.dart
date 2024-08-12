import 'package:flutter/material.dart';
import 'package:project_a/Screens/register_screen.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const StartScreen());
      case '/registerScreen':
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      default:
        return errorRoute();
    }
  }
  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error 404'),
        ),
        body: const Center(
          child: Text('Error 404'),
        ),
      );
    });
  }
}