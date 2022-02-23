import 'package:currency_converter/routes/routes.dart';
import 'package:currency_converter/ui/home/home.ui.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.arguments);
    switch (settings.name) {
      case HomeRoute:
        return MaterialPageRoute(builder: (_) => Home());
      // case ScheduleRoute:
      //   return MaterialPageRoute(
      //       builder: (_) => Schedule(index: settings.arguments));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
