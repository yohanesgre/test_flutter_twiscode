import 'package:flutter/material.dart';
import 'service_locator.dart';
import 'ui/app.dart';

void main() {
  setupLocator();
  runApp(App());
}
