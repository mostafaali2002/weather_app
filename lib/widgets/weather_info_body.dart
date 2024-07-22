import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/get_weather_image.dart';
import 'package:weather/model/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 30,
          ),
          Lottie.asset(getWeatherimage(weatherModel)),
          Text(
            "${weatherModel.temp.toInt()} C",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            weatherModel.condition,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )
        ],
      ),
    );
  }
}
