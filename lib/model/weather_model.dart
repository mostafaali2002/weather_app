class WeatherModel {
  final String cityName;

  final String condition;
  final String? image;
  final double temp;

  WeatherModel({
    required this.cityName,
    required this.condition,
    this.image,
    required this.temp,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        condition: json['forecast']['forecastday'][0]['day']['condition']
            ['text'],
        cityName: json['location']['name'],
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        temp: json['current']['temp_c']);
  }
}
