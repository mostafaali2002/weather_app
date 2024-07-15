class WeatherModel {
  final String cityName;
  final String date;
  final String condition;
  final String? image;
  final double temp;
  final double maxTemp;
  final double mintemp;

  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.condition,
      this.image,
      required this.temp,
      required this.maxTemp,
      required this.mintemp});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        condition: json['forecast']['forecastday'][0]['day']['condition']
            ['text'],
        cityName: json['location']['name'],
        date: json['current']['last_updated'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        temp: json['current']['last_updated']['temp_c']);
  }
}
