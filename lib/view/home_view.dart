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
        automaticallyImplyLeading: false,
        title: const Text(
          "Weather",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            iconSize: 32,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SearchView(),
              ));
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherCubitState>(
        builder: (context, state) {
          if (state is GetWeatherInitial) {
            return const NoWeatherBody();
          } else if (state is GetWeatherLoad) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetWeatherSuccess) {
            return WeatherInfoBody(
              weatherModel: state.weatherModel,
            );
          } else {
            return const Center(
                child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "oops error 😦 Enter city name or check network",
                style: TextStyle(fontSize: 30),
              ),
            ));
          }
        },
      ),
    );
  }
}
