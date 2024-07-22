import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/view/search_view.dart';
import 'package:weather/widgets/no_weather_body.dart';
import 'package:weather/widgets/weather_info_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            iconSize: 32,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SearchView(),
              ));
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherCubitState>(
        builder: (context, state) {
          if (state is GetWeatherInitial) {
            return NoWeatherBody();
          } else if (state is GetWeatherLoad) {
            return Center(child: CircularProgressIndicator());
          } else if (state is GetWeatherSuccess) {
            return WeatherInfoBody(
              weatherModel: state.weatherModel,
            );
          } else {
            return Center(
                child: Text(
              "oops there was an error",
              style: TextStyle(fontSize: 30),
            ));
          }
        },
      ),
    );
  }
}
