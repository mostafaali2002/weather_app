import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/services/weather_service.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  var formkey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formkey,
      appBar: AppBar(
        title: const Text(
          "Search City",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Name is empty';
                }
                return null;
              },
              onFieldSubmitted: (value) async {
                if (value != null) {
                  Navigator.pop(context);
                  var getWeather = BlocProvider.of<GetWeatherCubit>(context);
                  getWeather.getWeather(cityName: value);
                } else {}
              },
              controller: controller,
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
      ),
    );
  }
}
