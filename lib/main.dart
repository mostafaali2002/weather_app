import 'package:flutter/material.dart';
import 'package:weather/view/home_view.dart';
import 'package:weather/view/search_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchView(),
    );
  }
}
