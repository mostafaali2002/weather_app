import 'package:dio/dio.dart';
import 'package:weather/model/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apiKey = "36e95f371709459ea10144536241507";
  Future<WeatherModel> getWeatherInfo({required String cityName}) async {
    try {
      Response response = await dio
          .get("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1");

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errmessage =
          e.response?.data['error']['message'] ?? 'oops there was an error';
      throw Exception(errmessage);
    }
  }
}
