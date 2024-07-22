part of 'get_weather_cubit.dart';

class GetWeatherCubitState {}

class GetWeatherInitial extends GetWeatherCubitState {}

class GetWeatherSuccess extends GetWeatherCubitState {
  final WeatherModel weatherModel;

  GetWeatherSuccess({required this.weatherModel});
}

class GetWeatherFailure extends GetWeatherCubitState {}

class GetWeatherLoad extends GetWeatherCubitState {}
