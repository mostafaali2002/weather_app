import 'package:flutter/material.dart';
import 'package:weather/view/search_view.dart';
import 'package:weather/widgets/no_weather_body.dart';
import 'package:weather/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SearchView(),
              ));
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: WeatherInfoBody(),
    );
  }
}
