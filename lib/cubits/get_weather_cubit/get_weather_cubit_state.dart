part of 'get_weather_cubit.dart';

@immutable
sealed class GetWeatherCubitState {}

final class GetWeatherCubitInitial extends GetWeatherCubitState {}

final class GetWeatherCubitSuccess extends GetWeatherCubitState {}

final class GetWeatherCubitFailure extends GetWeatherCubitState {}

final class GetWeatherCubitLoad extends GetWeatherCubitState {}
