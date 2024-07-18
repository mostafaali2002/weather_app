import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/services/weather_service.dart';

WeatherModel? weatherModel;

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search City"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            onSubmitted: (value) async {
              weatherModel =
                  await WeatherService(Dio()).getWeatherInfo(cityName: value);
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
              suffixIcon: const Icon(Icons.search),
              labelText: "Search",
              hintText: "Enter your city",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
