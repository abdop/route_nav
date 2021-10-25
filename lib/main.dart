import 'package:flutter/material.dart';
import 'package:route_nav/app/app.locator.dart';
import 'package:route_nav/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator(); //Before the call of runApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
