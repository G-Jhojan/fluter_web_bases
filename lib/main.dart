import 'package:flutter/material.dart';
import 'router/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute

    );
  }
}
