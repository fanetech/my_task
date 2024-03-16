import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_task/components/form.dart';
import 'package:my_task/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.push
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(title: 'Manageur de tache'));
      case '/form':
        // Validation of correct data type
        if (args != null) {
          return MaterialPageRoute(
            builder: (context) => FormUi(
              onDataReceived: args as dynamic Function(String),
            ),
          );
        }
        // If args is not of the correct type, return an error page.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
