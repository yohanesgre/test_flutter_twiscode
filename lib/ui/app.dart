import 'package:flutter/material.dart';
import 'route_generator.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: homeRoute,
      onGenerateRoute: RouteGenerator.generateRoutes,
    );
  }
}