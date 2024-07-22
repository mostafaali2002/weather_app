import 'package:weather/model/weather_model.dart';

String getWeatherimage(WeatherModel weatherModel) {
  if (weatherModel.condition == null) return "assets/clean.json";

  switch (weatherModel.condition.toLowerCase()) {
    case 'cloudy':
      return "assets/cloudy.json";
    case 'rainy':
    case 'rain':
    case 'patchy rain nearby':
      return "assets/rainy.json";
    case 'sunny':
      return "assets/sunny.json";
    case 'thunderstorm':
    case 'thunder':
    case 'storm':
      return "assets/thunderstorm.json";
    default:
      return "assets/clean.json";
  }
}
