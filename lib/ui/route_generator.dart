import 'package:flutter/material.dart';
import '../blocs/bloc_item.dart';
import '../service_locator.dart';
import 'cart/cart.dart';
import 'home/home.dart';

const String homeRoute = '/';
const String cartRoute = '/cart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
            builder: (context) => Home());
      case cartRoute:
        return MaterialPageRoute(
            builder: (context) => Cart());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Page not found...'),
        ),
      );
    });
  }
}
