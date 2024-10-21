import 'package:flutter/material.dart';
import 'package:food_app/screnns/details_screen.dart';
import 'package:food_app/screnns/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foods App',
      home: const DetailsScreen(),
    );
  }
}


